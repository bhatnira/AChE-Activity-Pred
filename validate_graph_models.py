#!/usr/bin/env python3
"""
Quick validation script to test Graph Neural Network models
"""

import os
import sys
import deepchem as dc
import numpy as np

def test_classification_model():
    """Test the classification model"""
    print("🧪 Testing Classification Model...")
    try:
        model_dir = "GraphConv_model_files"
        if not os.path.exists(model_dir):
            print(f"❌ Classification model directory '{model_dir}' does not exist.")
            return False
        
        n_tasks = 1
        model = dc.models.GraphConvModel(n_tasks, model_dir=model_dir)
        model.restore()
        print("✅ Classification model loaded successfully!")
        return True
    except Exception as e:
        print(f"❌ Error loading classification model: {str(e)}")
        return False

def test_regression_model():
    """Test the regression model"""
    print("🧪 Testing Regression Model...")
    try:
        model_dir = "graphConv_reg_model_files 2"
        if not os.path.exists(model_dir):
            print(f"❌ Regression model directory '{model_dir}' does not exist.")
            return False
        
        n_tasks = 1
        model = dc.models.GraphConvModel(n_tasks, model_dir=model_dir)
        model.restore()
        print("✅ Regression model loaded successfully!")
        return True
    except Exception as e:
        print(f"❌ Error loading regression model: {str(e)}")
        return False

def main():
    print("🧬 Graph Neural Network Model Validation")
    print("=" * 40)
    
    # Test both models
    classification_ok = test_classification_model()
    regression_ok = test_regression_model()
    
    print("\n📊 Summary:")
    print(f"Classification Model: {'✅ OK' if classification_ok else '❌ FAILED'}")
    print(f"Regression Model: {'✅ OK' if regression_ok else '❌ FAILED'}")
    
    if classification_ok and regression_ok:
        print("\n🎉 All models loaded successfully!")
        print("🌐 You can now use the Graph Neural Network app at:")
        print("   http://localhost:8502")
        return 0
    else:
        print("\n⚠️  Some models failed to load. Check the error messages above.")
        return 1

if __name__ == "__main__":
    sys.exit(main())
