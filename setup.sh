#!/data/data/com.termux/files/usr/bin/bash
echo "🚀 Starting Ncc bot setup (Termux / Online IDE compatible)..."

# 1️⃣ Update & upgrade packages
echo "📦 Updating system packages..."
pkg update -y
pkg upgrade -y

# 2️⃣ Install system dependencies
echo "📦 Installing dependencies..."
pkg install -y python git ffmpeg wget curl nodejs

# 3️⃣ Install Python packages
echo "🐍 Installing Python dependencies..."
pip install --upgrade pip
pip install -r requirements.txt
pip install python-dotenv playwright

# 4️⃣ Install Playwright browsers (headless)
echo "🌐 Installing Playwright browsers..."
playwright install chromium

# 5️⃣ Handle .env file
echo "📁 Setting up environment variables..."
if [ -f "rename to .env" ]; then
    mv "rename to .env" .env
    echo "✅ .env file renamed and ready"
else
    echo "⚠️ No 'rename to .env' file found. Please create a .env file with your bot token."
fi

# 6️⃣ Make scripts executable
chmod +x *.sh

# 7️⃣ Instructions
echo "✅ Setup complete!"
echo "Run the bot with:"
echo "python igbot5.py  # or python ig.py depending on main script"
echo "Use headless mode for Playwright to avoid GUI issues."
