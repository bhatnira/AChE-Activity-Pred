#!/bin/bash

echo "🧪 Starting ChemBERTa AChE Prediction App..."
echo "📍 Application will be available at: http://localhost:8504"
echo ""

# Check if the required model exists
if [ ! -d "checkpoint-2000" ]; then
    echo "❌ Error: ChemBERTa model directory 'checkpoint-2000' not found!"
    echo "Please ensure the model is properly downloaded."
    exit 1
fi

# Start the application
streamlit run app_chemberta_new.py \
    --server.port=8504 \
    --server.address=0.0.0.0 \
    --server.headless=true \
    --server.enableCORS=false \
    --server.enableXsrfProtection=false

echo "🔄 ChemBERTa app has stopped."
