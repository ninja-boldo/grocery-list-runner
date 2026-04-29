#!/bin/sh
set -e

# Handle shutdown gracefully
trap 'exit 0' TERM INT

# Wait for nginx to be ready
echo "==> Waiting for nginx to be ready..."
sleep 15

# Check if certificate already exists
if [ -f /etc/letsencrypt/live/boldo.ddns.net/fullchain.pem ]; then
  echo "==> Certificate already exists, skipping initial obtain..."
else
  echo "==> Attempting to obtain SSL certificate..."
  
  # Try to obtain certificate (remove --staging for production!)
  certbot certonly \
    --webroot \
    -w /var/www/certbot \
    -d boldo.ddns.net \
    --email zen-hasty-shrunk@duck.com \
    --non-interactive \
    --agree-tos \
    --no-eff-email \
    && echo "==> Certificate obtained successfully!" \
    || echo "==> Certificate obtain failed (may already exist or DNS not ready)"
fi

# Check if we got the certificate
if [ -f /etc/letsencrypt/live/boldo.ddns.net/fullchain.pem ]; then
  echo "==> Certificate is available. Signaling nginx to reload..."
  
  # Create a signal file for nginx to detect
  touch /etc/letsencrypt/reload-nginx 2>/dev/null || true
  
  # Try to reload nginx via docker exec (may fail if docker socket not mounted)
  docker exec nginx nginx -s reload 2>/dev/null || \
    echo "==> Could not reload nginx via docker exec (expected in some setups)"
fi

# Start the renewal loop
echo "==> Starting certificate renewal loop (checks every 12 hours)..."
while true; do
  # Wait 12 hours
  sleep 43200
  
  echo "==> Running certificate renewal check..."
  
  # Attempt renewal
  certbot renew \
    --webroot \
    -w /var/www/certbot \
    --deploy-hook "touch /etc/letsencrypt/reload-nginx" \
    --quiet \
    && echo "==> Renewal check completed" \
    || echo "==> Renewal check failed or not due yet"
  
  # Try to reload nginx if renewal happened
  if [ -f /etc/letsencrypt/reload-nginx ]; then
    docker exec nginx nginx -s reload 2>/dev/null || true
    rm -f /etc/letsencrypt/reload-nginx
  fi
done
