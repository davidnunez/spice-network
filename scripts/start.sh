#!/usr/bin/env bash
# Start helper: run a simple static server from the repo root
set -euo pipefail

echo "Installing npm devDependencies (if needed)..."
npm install --silent

echo "Starting static server using 'serve' on http://127.0.0.1:5000"
npx serve -s . --listen 5000
