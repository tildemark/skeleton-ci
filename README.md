# CodeIgniter 4 DevContainer Skeleton

A complete, production-ready development environment for CodeIgniter 4 with MariaDB, using VS Code DevContainers for consistent, containerized development.

## Table of Contents

- [What's Included](#whats-included)
- [What You Need](#what-you-need)
- [What's NOT Included](#whats-not-included)
- [Quick Start](#quick-start)
- [After Installation](#after-installation)
- [Project Structure](#project-structure)
- [Database Setup](#database-setup)
- [Working with the Project](#working-with-the-project)
- [Troubleshooting](#troubleshooting)
- [Customization](#customization)

## What's Included

This skeleton provides a **complete, working development environment** with:

### Software Stack
- **CodeIgniter 4.6.3** - Latest stable version
- **PHP 8.2** - With Apache web server
- **MariaDB 11.2** - MySQL-compatible database
- **phpMyAdmin** - Web-based database management tool
- **Composer** - PHP dependency manager

### PHP Extensions (Pre-installed)
- `pdo_mysql` - For PDO database connections
- `mysqli` - For MySQLi database connections
- `mbstring` - Multi-byte string support
- `intl` - Internationalization support
- `gd` - Image processing
- `zip` - Archive handling
- `bcmath` - Arbitrary precision mathematics
- `exif` - Image metadata
- `pcntl` - Process control

### VS Code Extensions (Auto-installed)
- **Intelephense** - PHP IntelliSense
- **PHP Debug** - Xdebug integration
- **SQLTools** - Database management in VS Code
- **SQLTools MySQL Driver** - MySQL/MariaDB support

### Pre-configured Features
- ✅ **Migrations enabled** - Database versioning out of the box
- ✅ **Apache mod_rewrite** - Clean URLs enabled
- ✅ **Git configured** - Safe directory setup
- ✅ **Persistent database** - Data survives container restarts
- ✅ **Hot reload** - Changes reflect immediately
- ✅ **Error reporting** - Debug bar enabled in development

### Database Configuration
A MariaDB database is **automatically created** with:
- **Database name**: `codeigniter`
- **Database user**: `ci_user`
- **User password**: `ci_password`
- **Root password**: `root`
- **Port**: 3306 (accessible from host)
- **SSL**: Disabled for local development

## What You Need

### Required Software

1. **Docker Desktop**
   - Download: https://www.docker.com/products/docker-desktop
   - Version: 20.10 or higher
   - **Why**: Runs the containerized development environment
   - **Note**: Ensure Docker Desktop is running before starting

2. **Visual Studio Code**
   - Download: https://code.visualstudio.com/
   - Version: 1.60 or higher
   - **Why**: IDE for development and DevContainer management

3. **Dev Containers Extension**
   - Install from: https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers
   - Or install from VS Code Extensions panel (search "Dev Containers")
   - **Why**: Enables VS Code to work with Docker containers

### System Requirements

- **OS**: Windows 10/11, macOS 10.15+, or Linux
- **RAM**: Minimum 8GB (16GB recommended)
- **Disk Space**: 5GB free space for containers and images
- **CPU**: 64-bit processor with virtualization support enabled

### Network Requirements

These ports must be **available** on your machine:
- **8080** - For the web application
- **8081** - For phpMyAdmin
- **3306** - For database connections (optional, can be changed)

## What's NOT Included

These are **intentionally excluded** and must be added by you:

- ❌ **Your application code** - This is a skeleton, not a complete app
- ❌ **Environment variables** (`.env`) - Created automatically but not in Git
- ❌ **Vendor folder** - Installed automatically via Composer
- ❌ **Production configuration** - This is for development only
- ❌ **SSL certificates** - Not needed for local development
- ❌ **User authentication** - You'll build this
- ❌ **Sample data/seeders** - You'll create these

## Quick Start

### Step 1: Get the Code

**Choose ONE of these methods:**

#### Option A: Download ZIP (No Git Required)

1. Go to https://github.com/tildemark/skeleton-ci
2. Click the green **"Code"** button
3. Select **"Download ZIP"**
4. Extract the ZIP file to your desired location
5. Remember the folder path (e.g., `C:\Users\YourName\Projects\skeleton-ci`)

#### Option B: Using Git (If Installed)

```bash
# Clone this repository
git clone https://github.com/tildemark/skeleton-ci.git
cd skeleton-ci
```

**Don't have Git?** 
- Windows: Download from https://git-scm.com/download/win
- Or just use **Option A** above (Download ZIP)

### Step 2: Open in VS Code

**Option A: Using VS Code GUI**
1. Open Visual Studio Code
2. Click **File** → **Open Folder**
3. Navigate to the extracted/cloned folder
4. Click **Select Folder**

**Option B: Using Command Line (if in the folder already)**

```bash
# Open VS Code in the current directory
code .
```

**Don't have `code` command?**
- Open VS Code
- Press `Ctrl+Shift+P` (Windows/Linux) or `Cmd+Shift+P` (Mac)
- Type "Shell Command: Install 'code' command in PATH"
- Press Enter
- Restart your terminal

### Step 3: Start the DevContainer

1. **VS Code will detect the DevContainer configuration**
   - You'll see a prompt: "Reopen in Container"
   - Click "Reopen in Container"
   
   OR
   
2. **Manual method:**
   - Press `F1` (or `Ctrl+Shift+P` on Windows/Linux, `Cmd+Shift+P` on Mac)
   - Type: "Dev Containers: Reopen in Container"
   - Press Enter

### Step 4: Wait for Setup

The first time will take **2-5 minutes**. You'll see:

1. ✅ Building Docker images
2. ✅ Starting containers (app, database, phpMyAdmin)
3. ✅ Installing CodeIgniter 4 (if not present)
4. ✅ Installing Composer dependencies
5. ✅ Setting up environment variables
6. ✅ Starting Apache web server
7. ✅ Installing VS Code extensions

**Watch the terminal** at the bottom of VS Code for progress.

### Step 5: Verify Installation

When you see "🎉 Setup complete!", you're ready!

## After Installation

### What Happened?

After successful installation:

1. **CodeIgniter 4 is installed** in your workspace
2. **Apache is running** and serving your application
3. **MariaDB is running** with a database named `codeigniter`
4. **phpMyAdmin is running** for database management
5. **Environment file created** (`.env` in project root)
6. **Migrations are enabled** and ready to use

### Where Are the Files?

Your project structure will look like this:

```
your-project/
│
├── .devcontainer/              # DevContainer configuration (don't modify)
│   ├── devcontainer.json       # VS Code container settings
│   ├── docker-compose.yml      # Multi-container orchestration
│   ├── Dockerfile              # PHP/Apache image definition
│   └── setup.sh                # Automatic setup script
│
├── app/                        # YOUR APPLICATION CODE GOES HERE
│   ├── Config/                 # Configuration files
│   │   ├── App.php            # Main app config
│   │   ├── Database.php       # Database config
│   │   └── Routes.php         # URL routing (EDIT THIS for new routes)
│   │
│   ├── Controllers/            # YOUR CONTROLLERS GO HERE
│   │   └── Home.php           # Default controller
│   │
│   ├── Models/                 # YOUR MODELS GO HERE
│   │   └── (empty)            # Create your models here
│   │
│   ├── Views/                  # YOUR VIEWS/TEMPLATES GO HERE
│   │   └── welcome_message.php # Default welcome page
│   │
│   └── Database/
│       ├── Migrations/         # YOUR MIGRATIONS GO HERE
│       │   └── (empty)        # Create migrations here
│       └── Seeds/              # YOUR SEEDERS GO HERE
│           └── (empty)        # Create seeders here
│
├── public/                     # WEB ROOT (publicly accessible)
│   ├── index.php              # Main entry point (don't modify)
│   ├── .htaccess              # Apache rewrite rules
│   └── assets/                # Your CSS, JS, images go here
│       └── (create this folder for your assets)
│
├── writable/                   # Runtime files (don't commit these)
│   ├── cache/                 # Application cache
│   ├── logs/                  # Application logs
│   ├── session/               # Session files
│   └── uploads/               # File uploads
│
├── vendor/                     # Composer dependencies (auto-generated)
├── tests/                      # Your unit tests
├── .env                        # Environment variables (EDIT THIS for config)
├── env                         # Environment template (don't modify)
├── composer.json               # PHP dependencies
├── spark                       # CLI tool (run: php spark)
└── README.md                   # This file
```

### Access Your Application

**Open your browser** and navigate to:

- **Main Application**: http://localhost:8080
  - You should see the CodeIgniter welcome page
  - This means everything is working!

- **phpMyAdmin**: http://localhost:8081
  - Click "Login"
  - Server: `db` (already filled)
  - Username: `ci_user`
  - Password: `ci_password`
  - You'll see the `codeigniter` database

### First Steps

#### 1. Check Database Connection

In the VS Code terminal (inside the container):

```bash
# Test database connection
mysql -h db -u ci_user -pci_password --skip-ssl -e "SELECT 1"

# You should see:
# +---+
# | 1 |
# +---+
```

#### 2. Create Your First Migration

```bash
# Create a migration for a users table
php spark make:migration CreateUsersTable

# This creates: app/Database/Migrations/YYYY-MM-DD-HHMMSS_CreateUsersTable.php
```

#### 3. Edit the Migration

Open the created file in `app/Database/Migrations/` and edit it:

```php
<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class CreateUsersTable extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id' => [
                'type'           => 'INT',
                'constraint'     => 11,
                'unsigned'       => true,
                'auto_increment' => true,
            ],
            'username' => [
                'type'       => 'VARCHAR',
                'constraint' => '100',
            ],
            'email' => [
                'type'       => 'VARCHAR',
                'constraint' => '100',
            ],
            'created_at' => [
                'type' => 'DATETIME',
                'null' => true,
            ],
        ]);
        
        $this->forge->addKey('id', true);
        $this->forge->createTable('users');
    }

    public function down()
    {
        $this->forge->dropTable('users');
    }
}
```

#### 4. Run the Migration

```bash
php spark migrate

# You should see:
# Running all new migrations...
# Running: YYYY-MM-DD-HHMMSS_CreateUsersTable
# Migrations complete.
```

#### 5. Verify in phpMyAdmin

Go to http://localhost:8081 and check that the `users` table was created!

## Project Structure

### Important Directories

| Directory | Purpose | Commit to Git? |
|-----------|---------|----------------|
| `app/` | Your application code | ✅ Yes |
| `public/` | Web root, assets | ✅ Yes |
| `.devcontainer/` | Container config | ✅ Yes |
| `writable/` | Runtime files | ❌ No (auto-generated) |
| `vendor/` | Composer packages | ❌ No (auto-generated) |
| `.env` | Environment variables | ❌ No (sensitive data) |

### Configuration Files

| File | Purpose | When to Edit |
|------|---------|--------------|
| `.env` | Environment variables | Change database credentials, base URL |
| `app/Config/Routes.php` | URL routing | Add new routes for your app |
| `app/Config/Database.php` | Database config | Usually uses `.env` values |
| `app/Config/App.php` | App settings | Change timezone, locale, etc. |

## Database Setup

### Accessing the Database

**Method 1: phpMyAdmin (GUI)**
1. Go to http://localhost:8081
2. Login with credentials above
3. Click on `codeigniter` database

**Method 2: Command Line**
```bash
# From inside the container terminal
mysql -h db -u ci_user -pci_password --skip-ssl

# Or directly access the database
mysql -h db -u ci_user -pci_password --skip-ssl codeigniter
```

**Method 3: VS Code SQLTools**
1. Click SQLTools icon in VS Code sidebar
2. Connection already configured: "codeigniter"
3. Click to connect

**Method 4: External Tools (TablePlus, DBeaver, etc.)**
- Host: `localhost`
- Port: `3306`
- User: `ci_user`
- Password: `ci_password`
- Database: `codeigniter`

### Migration Commands

```bash
# Create a new migration
php spark make:migration MigrationName

# Run all pending migrations
php spark migrate

# Rollback the last batch
php spark migrate:rollback

# Check what will be migrated
php spark migrate:status

# Rollback all and re-migrate (CAREFUL: deletes data!)
php spark migrate:refresh

# Rollback all migrations
php spark migrate:rollback --all
```

### Seeder Commands

```bash
# Create a seeder
php spark make:seeder UserSeeder

# Run a specific seeder
php spark db:seed UserSeeder

# Run all seeders
php spark db:seed
```

## Working with the Project

### Creating a New Feature

Let's create a complete feature from scratch:

#### 1. Create a Migration

```bash
php spark make:migration CreatePostsTable
```

Edit `app/Database/Migrations/YYYY-MM-DD-HHMMSS_CreatePostsTable.php`:

```php
public function up()
{
    $this->forge->addField([
        'id' => [
            'type'           => 'INT',
            'constraint'     => 11,
            'unsigned'       => true,
            'auto_increment' => true,
        ],
        'title' => [
            'type'       => 'VARCHAR',
            'constraint' => '255',
        ],
        'body' => [
            'type' => 'TEXT',
        ],
        'created_at' => [
            'type' => 'DATETIME',
            'null' => true,
        ],
        'updated_at' => [
            'type' => 'DATETIME',
            'null' => true,
        ],
    ]);
    
    $this->forge->addKey('id', true);
    $this->forge->createTable('posts');
}
```

Run it:
```bash
php spark migrate
```

#### 2. Create a Model

```bash
php spark make:model Post
```

Edit `app/Models/Post.php`:

```php
<?php

namespace App\Models;

use CodeIgniter\Model;

class Post extends Model
{
    protected $table      = 'posts';
    protected $primaryKey = 'id';
    
    protected $useAutoIncrement = true;
    protected $returnType       = 'array';
    protected $useSoftDeletes   = false;
    
    protected $allowedFields = ['title', 'body'];
    
    protected $useTimestamps = true;
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';
}
```

#### 3. Create a Controller

```bash
php spark make:controller Post
```

Edit `app/Controllers/Post.php`:

```php
<?php

namespace App\Controllers;

use App\Models\Post as PostModel;

class Post extends BaseController
{
    public function index()
    {
        $model = new PostModel();
        $data['posts'] = $model->findAll();
        
        return view('posts/index', $data);
    }
    
    public function show($id)
    {
        $model = new PostModel();
        $data['post'] = $model->find($id);
        
        if (!$data['post']) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException();
        }
        
        return view('posts/show', $data);
    }
}
```

#### 4. Create Views

Create `app/Views/posts/index.php`:

```php
<!DOCTYPE html>
<html>
<head>
    <title>Posts</title>
</head>
<body>
    <h1>All Posts</h1>
    <?php foreach ($posts as $post): ?>
        <div>
            <h2><?= esc($post['title']) ?></h2>
            <p><?= esc($post['body']) ?></p>
            <a href="/posts/<?= $post['id'] ?>">Read more</a>
        </div>
    <?php endforeach; ?>
</body>
</html>
```

#### 5. Add Routes

Edit `app/Config/Routes.php`:

```php
$routes->get('/posts', 'Post::index');
$routes->get('/posts/(:num)', 'Post::show/$1');
```

#### 6. Test It

Visit http://localhost:8080/posts

### Common Development Tasks

```bash
# Clear all caches
php spark cache:clear

# List all available commands
php spark list

# Create a filter
php spark make:filter AuthFilter

# Create a library
php spark make:library MyLibrary

# Create a config file
php spark make:config MyConfig

# View all routes
php spark routes
```

## Troubleshooting

### Port Already in Use

**Error**: `Port 8080 is already in use`

**Solution**: Change the port in `.devcontainer/docker-compose.yml`:

```yaml
app:
  ports:
    - "8888:80"  # Change 8080 to 8888 (or any free port)
```

Then rebuild: `F1` → "Dev Containers: Rebuild Container"

### Database Connection Error

**Error**: `Unable to connect to the database`

**Symptoms**:
- Migrations fail
- Application shows database error

**Solutions**:

1. **Wait for database to initialize** (first time takes 30-60 seconds)
   ```bash
   # Check if database is ready
   mysql -h db -u ci_user -pci_password --skip-ssl -e "SELECT 1"
   ```

2. **Check .env file exists and has correct settings**:
   ```bash
   cat .env | grep database
   ```
   
   Should show:
   ```
   database.default.hostname = db
   database.default.database = codeigniter
   database.default.username = ci_user
   database.default.password = ci_password
   database.default.encrypt = false
   ```

3. **Recreate .env from template**:
   ```bash
   cp env .env
   ```

### Application Not Loading (localhost:8080)

**Symptom**: Browser shows "Can't connect" or "Connection refused"

**Solutions**:

1. **Check if Apache is running**:
   ```bash
   ps aux | grep apache
   ```
   
   If nothing appears, start Apache:
   ```bash
   apache2ctl start
   ```

2. **Check port forwarding**:
   - Open VS Code "PORTS" panel (View → Ports)
   - Port 8080 should be listed
   - If not, click "Forward a Port" and add 8080

3. **Check from inside container**:
   ```bash
   curl http://localhost:80
   ```
   
   If this works but localhost:8080 doesn't, it's a port forwarding issue.

4. **Rebuild container**:
   ```bash
   F1 → "Dev Containers: Rebuild Container"
   ```

### Container Won't Start

**Error**: Container fails to build or start

**Solutions**:

1. **Check Docker Desktop is running**

2. **Check Docker logs**:
   ```bash
   docker-compose -f .devcontainer/docker-compose.yml logs
   ```

3. **Remove old containers and rebuild**:
   ```bash
   docker-compose -f .devcontainer/docker-compose.yml down
   docker-compose -f .devcontainer/docker-compose.yml up -d --build
   ```

4. **Check disk space**:
   ```bash
   docker system df
   ```
   
   If low, clean up:
   ```bash
   docker system prune -a
   ```

### Permission Errors

**Error**: Permission denied when accessing files

**Solution**: Fix ownership inside container:
```bash
chown -R www-data:www-data /workspace
chmod -R 755 /workspace/writable
```

### Slow Performance

**Symptoms**: Container or application is slow

**Solutions**:

1. **Increase Docker resources**:
   - Open Docker Desktop settings
   - Increase RAM to 4GB+ and CPUs to 2+

2. **Use performance mode** (macOS):
   - In docker-compose.yml, add `:cached` to volumes:
   ```yaml
   volumes:
     - ..:/workspace:cached
   ```

## Customization

### Change PHP Version

Edit `.devcontainer/Dockerfile`:

```dockerfile
FROM php:8.3-apache  # Change to 8.1, 8.2, 8.3, etc.
```

Rebuild container.

### Add PHP Extensions

Edit `.devcontainer/Dockerfile`, add to the `RUN docker-php-ext-install` line:

```dockerfile
RUN docker-php-ext-install pdo_mysql mysqli mbstring redis imagick
```

Rebuild container.

### Change Database Name/Credentials

Edit `.devcontainer/docker-compose.yml`:

```yaml
db:
  environment:
    MYSQL_ROOT_PASSWORD: my_root_password
    MYSQL_DATABASE: my_app_db
    MYSQL_USER: my_user
    MYSQL_PASSWORD: my_secure_password
```

Then update `env` file to match, and rebuild container.

### Add More Services

Edit `.devcontainer/docker-compose.yml`:

```yaml
services:
  app:
    # ... existing config ...
  
  db:
    # ... existing config ...
  
  redis:
    image: redis:alpine
    ports:
      - "6379:6379"
    networks:
      - codeigniter_network
```

Rebuild container.

### Change Apache DocumentRoot

By default, it's set to `/workspace/public`. To change:

Edit `.devcontainer/Dockerfile`:

```dockerfile
ENV APACHE_DOCUMENT_ROOT=/workspace/public_html
```

Rebuild container.

## Production Deployment

⚠️ **Important**: This setup is for **DEVELOPMENT ONLY**!

For production, you need:

- [ ] Change database passwords
- [ ] Disable debug mode (`CI_ENVIRONMENT = production`)
- [ ] Enable SSL/HTTPS
- [ ] Use proper Apache/Nginx configuration
- [ ] Set up proper file permissions
- [ ] Configure firewalls
- [ ] Enable security headers
- [ ] Set up backups
- [ ] Use environment-specific .env files
- [ ] Remove phpMyAdmin (security risk)

## Support & Resources

- **CodeIgniter Documentation**: https://codeigniter.com/user_guide/
- **CodeIgniter Forum**: https://forum.codeigniter.com/
- **DevContainers Documentation**: https://code.visualstudio.com/docs/devcontainers/containers
- **Docker Documentation**: https://docs.docker.com/

## Contributing

Found a bug or want to improve this skeleton? Contributions are welcome!

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## License

This project is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).

---

**Questions?** Open an issue on GitHub!

**Happy Coding!** 🚀