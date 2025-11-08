#!/bin/bash
echo "🚀 Setting up Ncc bot in online IDE / Debian environment..."

# 1️⃣ Create and activate Python virtual environment
python3 -m venv venv
source venv/bin/activate

# 2️⃣ Upgrade pip in venv
pip install --upgrade pip

# 3️⃣ Install Python dependencies
pip install -r requirements.txt
pip install python-dotenv playwright

# 4️⃣ Install Playwright browsers (headless)
playwright install chromium

# 5️⃣ Handle .env file
if [ -f "rename to .env" ]; then
    mv "rename to .env" .env
    echo "✅ .env file ready"
else
    echo "⚠️ Please create .env file with your bot token"
fi

# 6️⃣ Make scripts executable
chmod +x *.sh

# 7️⃣ Run the bot
echo "✅ Setup complete! Running bot now..."
python igbot5.py
