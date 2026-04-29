#!/bin/sh
set -e

# Function to check if certificates exist
check_certs() {
  [ -f /etc/letsencrypt/live/boldo.ddns.net/fullchain.pem ] && \
  [ -f /etc/letsencrypt/live/boldo.ddns.net/privkey.pem ]
}

# If certificates don't exist, create temporary HTTP-only config
if ! check_certs; then
  echo "==> Certificates not found. Starting with HTTP-only configuration..."
  
  cat > /etc/nginx/nginx-temp.conf << 'EOF'
events {
    worker_connections 1024;
}

http {
    include /etc/nginx/mime.types;
    default_type application/octet-stream;

    server {
        listen 80;
        server_name boldo.ddns.net;

        # Serve ACME challenge
        location /.well-known/acme-challenge/ {
            alias /var/www/certbot/.well-known/acme-challenge/;
            try_files $uri =404;
        }

        # Temporary proxy all traffic
        location / {
            root /usr/share/nginx/html;
            try_files $uri /index.html;
        }

        location /api/ {
            proxy_pass http://app:3030/;
            proxy_http_version 1.1;
            proxy_set_header Host $host;
            proxy_set_header X-Real-IP $remote_addr;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
            proxy_set_header X-Forwarded-Proto $scheme;
        }
    }
}
EOF
  
  # Start nginx with HTTP-only config
  echo "==> Starting nginx with temporary HTTP configuration..."
  nginx -c /etc/nginx/nginx-temp.conf -g 'daemon off;' &
  NGINX_PID=$!
  
  # Wait for certificates to be created by certbot (max 10 minutes)
  echo "==> Waiting for certificates to be obtained by certbot..."
  for i in $(seq 1 120); do
    if check_certs; then
      echo "==> Certificates found! Switching to SSL configuration..."
      
      # Test the SSL config
      if nginx -t -c /etc/nginx/nginx.conf 2>/dev/null; then
        # Stop the temporary nginx
        kill -QUIT $NGINX_PID 2>/dev/null || true
        sleep 2
        
        # Start with full SSL config
        echo "==> Starting nginx with full SSL configuration..."
        exec nginx -g 'daemon off;'
      else
        echo "==> SSL config test failed, continuing with HTTP-only..."
      fi
      break
    fi
    
    # Log progress every 30 seconds
    if [ $((i % 6)) -eq 0 ]; then
      echo "==> Still waiting for certificates... ($i/120)"
    fi
    
    sleep 5
  done
  
  echo "==> Timeout waiting for certificates. Continuing with HTTP-only mode..."
  # Wait for nginx process
  wait $NGINX_PID
else
  # Certificates exist, start normally with SSL
  echo "==> Certificates found. Starting with full SSL configuration..."
  exec nginx -g 'daemon off;'
fi
