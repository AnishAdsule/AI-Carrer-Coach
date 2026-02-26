#!/bin/bash

echo "🚀 AI Career Coach - Quick Setup Script"
echo "========================================"
echo ""

# Check if .env exists
if [ ! -f .env ]; then
    echo "📝 Creating .env file from template..."
    cp .env.example .env
    echo "✅ .env file created!"
    echo ""
    echo "⚠️  IMPORTANT: Edit .env file and add your API keys:"
    echo "   1. Clerk keys from: https://dashboard.clerk.com/last-active?path=api-keys"
    echo "   2. Gemini key from: https://aistudio.google.com/app/apikey"
    echo "   3. Database URL (PostgreSQL connection string)"
    echo ""
    echo "Press ENTER after you've added your keys..."
    read
else
    echo "✅ .env file already exists"
fi

echo ""
echo "📦 Installing dependencies..."
npm install

echo ""
echo "🗄️  Setting up database..."
npx prisma generate
npx prisma db push

echo ""
echo "✅ Setup complete!"
echo ""
echo "🎉 To start the development server, run:"
echo "   npm run dev"
echo ""
echo "📖 For detailed setup instructions, see SETUP_GUIDE.md"
echo ""
