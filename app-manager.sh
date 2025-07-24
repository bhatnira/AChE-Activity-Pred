#!/bin/bash

# AChE Prediction Apps Management Script

echo "🧪 AChE Prediction Applications Suite"
echo "======================================"
echo ""
echo "Available Applications:"
echo "1. RDKit-based App (app_rdkit.py) - Port 8501"
echo "2. Graph Neural Network App (app_graph_combined.py) - Port 8502"
echo ""

# Function to check if port is in use
check_port() {
    local port=$1
    if lsof -Pi :$port -sTCP:LISTEN -t >/dev/null ; then
        echo "✅ Port $port is in use"
        return 0
    else
        echo "❌ Port $port is available"
        return 1
    fi
}

echo "Port Status:"
check_port 8501
check_port 8502
echo ""

echo "Quick Start Commands:"
echo "• RDKit App:     ./run-rdkit-app.sh"
echo "• Graph App:     ./run-graph-app.sh"
echo "• Docker Build:  docker-compose up"
echo ""

echo "Application URLs:"
if check_port 8501 > /dev/null; then
    echo "🌐 RDKit App: http://localhost:8501"
fi

if check_port 8502 > /dev/null; then
    echo "🌐 Graph App: http://localhost:8502"
fi

echo ""
echo "Features Comparison:"
echo "┌─────────────────────┬─────────────────┬─────────────────────┐"
echo "│ Feature             │ RDKit App       │ Graph Neural App    │"
echo "├─────────────────────┼─────────────────┼─────────────────────┤"
echo "│ Molecular Input     │ SMILES/Drawing  │ SMILES/Drawing      │"
echo "│ Algorithm           │ Classical ML    │ Graph Neural Nets   │"
echo "│ Features            │ RDKit Features  │ Graph Convolution   │"
echo "│ Interpretability    │ LIME            │ Atom Contributions  │"
echo "│ Model Type          │ Ensemble        │ DeepChem GCN        │"
echo "└─────────────────────┴─────────────────┴─────────────────────┘"
