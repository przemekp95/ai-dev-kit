#!/bin/bash
echo "🛑 Zatrzymuję kontenery Ollama + WebUI z ai-dev-kit..."
cd "$(dirname "$0")"
docker-compose down
echo "✅ Zatrzymano wszystko."
