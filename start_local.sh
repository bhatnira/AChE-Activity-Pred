#!/bin/bash

# Local development start script
echo "Starting Molecular Prediction Suite locally..."

# Check if virtual environment exists
if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv venv
fi

# Activate virtual environment
source venv/bin/activate

# Install requirements
echo "Installing requirements..."
pip install -r requirements.txt

# Start the application
echo "Starting Streamlit app..."
streamlit run app_launcher.py --server.port 8501 --server.address localhost

echo "App should be running at http://localhost:8501"
