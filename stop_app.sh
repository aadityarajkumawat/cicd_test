#!/bin/bash

PORT=8000

# Find PID of process using the port
PID=$(lsof -ti tcp:$PORT)

if [ -z "$PID" ]; then
  echo "No process is running on port $PORT"
else
  echo "Stopping process with PID $PID on port $PORT"
  kill -9 $PID
  echo "Process stopped."
fi