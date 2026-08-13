#!/bin/bash
# ApplicationStop hook — kill any running node server.js process
# Safe to run even if no process is currently running

PID=$(pgrep -f "node server.js" || true)

if [ -n "$PID" ]; then
  echo "Stopping existing server (PID: $PID)..."
  kill "$PID"
  sleep 2
  echo "Server stopped."
else
  echo "No running server found. Skipping."
fi
