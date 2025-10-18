#!/bin/bash
set -e

echo "🚀 Starting CodeIgniter DevContainer setup..."

# Fix git ownership warning
git config --global --add safe.directory /workspace 2>/dev/null || true

# Check if composer.json exists
if [ ! -f "composer.json" ]; then
    echo "📦 Creating new CodeIgniter 4 project..."
    
    composer create-project codeigniter4/appstarter temp-ci4
    
    shopt -s dotglob
    mv temp-ci4/* . 2>/dev/null || true
    rm -rf temp-ci4
    
    echo "✅ CodeIgniter 4 project created!"
else
    echo "📦 Installing dependencies..."
    composer install --no-interaction
fi

# Copy env file if it doesn't exist
if [ ! -f ".env" ] && [ -f "env" ]; then
    echo "⚙️  Setting up environment configuration..."
    cp env .env
    echo "✅ .env file created!"
fi

# Set proper permissions
chown -R www-data:www-data /workspace 2>/dev/null || true
chmod -R 755 /workspace/writable 2>/dev/null || true

# Start Apache if not already running
if ! pgrep -x "apache2" > /dev/null; then
    echo "🌐 Starting Apache..."
    apache2ctl start
fi

echo ""
echo "🎉 Setup complete!"
echo ""
echo "📍 Application: http://localhost:8080"
echo "📍 phpMyAdmin: http://localhost:8081"
echo ""
echo "💡 Next steps:"
echo "   1. Wait 10-15 seconds for database to initialize"
echo "   2. Run: php spark migrate"
echo ""