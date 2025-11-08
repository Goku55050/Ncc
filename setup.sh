#!/data/data/com.termux/files/usr/bin/bash
# === Termux-compatible setup script for NCC ===
# Author: Adapted for Termux by ChatGPT (2025)
# ==============================================

echo "🔧 Updating Termux packages..."
pkg update -y && pkg upgrade -y

echo "📦 Installing basic dependencies..."
pkg install -y python git curl

echo "📦 Ensuring pip and build tools are ready..."
python -m ensurepip
pip install --upgrade pip setuptools wheel

echo "📦 Installing required Python libraries..."
# You can add/remove as needed depending on NCC repo requirements
pip install requests urllib3 telebot pyTelegramBotAPI beautifulsoup4

# Optional: if NCC uses Playwright (browser automation)
echo "⚠️  Playwright is not supported natively in Termux."
echo "    If you need it, use Ubuntu inside Termux via: proot-distro install ubuntu"
sleep 3

echo "⚙️  Setting up environment file..."
if [ -f "rename to .env" ]; then
    mv "rename to .env" .env
    echo "✅ .env file created. Please edit it to add your tokens:"
    echo "   nano .env"
else
    echo "⚠️  'rename to .env' file not found. Please create one manually."
fi

echo "✅ Setup complete!"
echo "To run the bot, use:"
echo "python ig.py   or   python igbot5.py"
