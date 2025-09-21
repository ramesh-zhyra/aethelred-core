# scripts/setup.sh
#!/bin/bash
set -e

echo "🚀 Setting up AETHELRED development environment..."

# Check dependencies
command -v cargo >/dev/null 2>&1 || { echo "Rust not installed"; exit 1; }
command -v node >/dev/null 2>&1 || { echo "Node not installed"; exit 1; }
command -v python3 >/dev/null 2>&1 || { echo "Python not installed"; exit 1; }

# Install Rust dependencies
echo "📦 Installing Rust dependencies..."
cargo build

# Install Node dependencies
echo "📦 Installing Node dependencies..."
npm install

# Setup Python virtual environment
echo "🐍 Setting up Python environment..."
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt

echo "✅ Setup complete!"
