#!/bin/bash
# Start a local web server for the interlabscing static site
# Usage: ./serve.sh [port]

PORT=${1:-8000}
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Starting static web server for Interlab System Technologies website"
echo "Serving from: $SCRIPT_DIR"
echo "URL: http://localhost:$PORT/"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""

cd "$SCRIPT_DIR"
python3 -m http.server $PORT --bind 127.0.0.1
