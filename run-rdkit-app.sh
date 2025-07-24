#!/bin/bash

# Script to run the RDKit AChE Prediction App

echo "🧪 Starting RDKit-based AChE Prediction App..."

# Check if virtual environment exists
if [ ! -d "venv" ]; then
    echo "❌ Virtual environment not found. Please run the installation first."
    exit 1
fi

# Activate virtual environment and run the app
source venv/bin/activate
echo "✅ Virtual environment activated"

echo "🚀 Starting Streamlit app on port 8501..."
streamlit run app_rdkit.py --server.port=8501 --server.address=0.0.0.0

echo ""
echo "🌐 App will be available at:"
echo "   Local URL: http://localhost:8501"
echo ""
echo "📊 This app uses RDKit with Classical ML for:"
echo "   • Traditional molecular descriptors"
echo "   • Ensemble machine learning models"
echo "   • LIME-based interpretability"
echo "   • Interactive molecular drawing"
echo ""
echo "To stop the app, press Ctrl+C"
