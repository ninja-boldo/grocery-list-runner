#!/bin/sh

echo "starting ollama server..."
ollama serve &

echo "waiting for ollama to be ready..."
until ollama list > /dev/null 2>&1; do
  sleep 1
done

echo "creating models..."
ollama create wish-mapper -f /app/other/models/wish_mapper.Modelfile
ollama create class-mapper -f /app/other/models/class_mapper.Modelfile

echo "models ready"
wait
