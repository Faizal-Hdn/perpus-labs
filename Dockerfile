# Use the official PHP image with required version and extensions
FROM php:8.1-cli

# Set working directory in the container
WORKDIR /var/www

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    git \
    && docker-php-ext-install pdo pdo_mysql mbstring exif pcntl bcmath gd

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Copy application files to the container
COPY . .

# Install application dependencies
RUN composer install

# Expose the port php artisan serve will run on
EXPOSE 8000

# Command to start the Laravel application
CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=8000"]

