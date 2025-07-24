#!/bin/bash

# Script to run the Circular Fingerprint AChE Prediction App

echo "🧪 Starting Circular Fingerprint AChE Prediction App..."

# Check if virtual environment exists
if [ ! -d "venv" ]; then
    echo "❌ Virtual environment not found. Please run the installation first."
    exit 1
fi

# Activate virtual environment and run the app
source venv/bin/activate
echo "✅ Virtual environment activated"

echo "🚀 Starting Streamlit app on port 8503..."
streamlit run app_circular.py --server.port=8503 --server.address=0.0.0.0

echo ""
echo "🌐 App will be available at:"
echo "   Local URL: http://localhost:8503"
echo ""
echo "📊 This app uses Circular Fingerprints for:"
echo "   • Morgan/ECFP fingerprint features"
echo "   • Optimized TPOT pipeline models"
echo "   • LIME-based interpretability"
echo "   • Interactive molecular drawing"
echo ""
echo "To stop the app, press Ctrl+C"
