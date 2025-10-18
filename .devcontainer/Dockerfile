FROM php:8.2-apache

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    libzip-dev \
    libicu-dev \
    mariadb-client

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql mysqli mbstring exif pcntl bcmath gd intl zip

# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Configure Apache
RUN echo '<Directory /workspace/public>' > /etc/apache2/conf-available/codeigniter.conf && \
    echo '    Options Indexes FollowSymLinks' >> /etc/apache2/conf-available/codeigniter.conf && \
    echo '    AllowOverride All' >> /etc/apache2/conf-available/codeigniter.conf && \
    echo '    Require all granted' >> /etc/apache2/conf-available/codeigniter.conf && \
    echo '</Directory>' >> /etc/apache2/conf-available/codeigniter.conf && \
    a2enconf codeigniter

# Set document root
ENV APACHE_DOCUMENT_ROOT=/workspace/public
RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

# Set working directory
WORKDIR /workspace

# Fix permissions for www-data user
RUN chown -R www-data:www-data /workspace

# Expose port
EXPOSE 80

# Start Apache in foreground when container starts
CMD ["apache2-foreground"]