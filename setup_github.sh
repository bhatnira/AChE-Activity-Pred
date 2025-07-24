#!/bin/bash

# GitHub Repository Setup Script
echo "🚀 Setting up GitHub repository for deployment..."

# Initialize git repository
git init

# Create .gitignore file
cat > .gitignore << 'EOF'
# Python
__pycache__/
*.py[cod]
*$py.class
*.so
.Python
env/
venv/
ENV/
env.bak/
venv.bak/

# IDE
.vscode/
.idea/
*.swp
*.swo

# OS
.DS_Store
Thumbs.db

# Logs
*.log

# Temporary files
*.tmp
*.temp

# Local testing
test_output/
debug/

# Environment variables
.env
.env.local

# Streamlit cache
.streamlit/

# Model cache (keep model files but ignore cache)
*.cache
EOF

# Add all files
echo "📁 Adding files to git..."
git add .

# Initial commit
echo "💾 Creating initial commit..."
git commit -m "Initial commit: Molecular Prediction Suite with Docker deployment

- Complete Streamlit app launcher with iOS design
- Four prediction models: ChemBERTa, RDKit, Circular, Graph Neural Networks
- Docker containerization with Dockerfile.launcher
- Render.com deployment configuration
- Production-ready requirements.txt
- Comprehensive deployment documentation"

echo "✅ Repository initialized successfully!"
echo ""
echo "Next steps:"
echo "1. Create a new repository on GitHub"
echo "2. Run: git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git"
echo "3. Run: git branch -M main"
echo "4. Run: git push -u origin main"
echo "5. Connect your GitHub repo to Render.com"
echo ""
echo "🌐 Your app will be deployed at: https://your-service-name.onrender.com"
