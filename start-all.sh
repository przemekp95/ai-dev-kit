#!/bin/bash
echo "🔄 Uruchamiam kontenery Ollama + WebUI z ai-dev-kit..."
cd "$(dirname "$0")"

# Funkcja zatrzymująca kontener używający danego portu
stop_if_port_used() {
  PORT=$1
  CONTAINER_ID=$(docker ps --filter "publish=$PORT" --format "{{.ID}}")
  if [ -n "$CONTAINER_ID" ]; then
    echo "⚠️  Port $PORT zajęty przez kontener: $CONTAINER_ID – zatrzymuję go..."
    docker stop "$CONTAINER_ID"
  fi
}

# Sprawdź i zatrzymaj, jeśli trzeba
stop_if_port_used 11434
stop_if_port_used 3000

# Uruchom kontenery
docker-compose up -d --build

echo "✅ Gotowe! WebUI: http://localhost:3000"
