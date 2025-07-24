#!/bin/bash

# Script to run the Graph Combined AChE Prediction App

echo "🧪 Starting Graph Neural Network AChE Prediction App..."

# Check if virtual environment exists
if [ ! -d "venv" ]; then
    echo "❌ Virtual environment not found. Please run the installation first."
    exit 1
fi

# Activate virtual environment and run the app
source venv/bin/activate
echo "✅ Virtual environment activated"

echo "🚀 Starting Streamlit app on port 8502..."
streamlit run app_graph_combined.py --server.port=8502 --server.address=0.0.0.0

echo ""
echo "🌐 App will be available at:"
echo "   Local URL: http://localhost:8502"
echo ""
echo "📊 This app uses Graph Neural Networks with DeepChem for:"
echo "   • Graph-based molecular representation"
echo "   • Advanced AChE inhibitory activity prediction"
echo "   • Molecular visualization and interpretation"
echo ""
echo "To stop the app, press Ctrl+C"
