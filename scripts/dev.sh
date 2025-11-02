#!/usr/bin/env bash
# Development helper: install deps and start live-server serving the repo root
set -euo pipefail

echo "Installing npm devDependencies (if needed)..."
npm install --silent

echo "Starting live-server on http://127.0.0.1:8000 (opens browser)..."
npx live-server --port=8000 --open=index.html .
