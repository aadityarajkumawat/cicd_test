#!/bin/bash

# Define your app file and port
APP_MODULE="main:app"
HOST="0.0.0.0"
PORT=8000

echo "Starting FastAPI server at http://$HOST:$PORT"
uvicorn $APP_MODULE --host $HOST --port $PORT