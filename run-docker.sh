#!/bin/bash

# Script to build and run the AChE Prediction App with Docker

echo "Building Docker image..."
docker build -t ache-prediction-app .

echo "Running Docker container..."
docker run -d \
  --name ache-prediction \
  -p 8501:8501 \
  ache-prediction-app

echo "Container started! The app will be available at:"
echo "http://localhost:8501"

echo ""
echo "To check container status:"
echo "docker ps"

echo ""
echo "To view container logs:"
echo "docker logs ache-prediction"

echo ""
echo "To stop the container:"
echo "docker stop ache-prediction"

echo ""
echo "To remove the container:"
echo "docker rm ache-prediction"
