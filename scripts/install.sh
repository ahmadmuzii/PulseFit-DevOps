#!/bin/bash
# AfterInstall hook - install backend Node dependencies

set -e

APP_DIR="/home/ubuntu/demo-app"

echo "Running npm install in backend..."
cd "$APP_DIR/backend"
npm install

echo "Install complete."