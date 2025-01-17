# Базовый образ с PHP 8.0
FROM php:8.0-cli

# Установка необходимых инструментов и расширений
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    && docker-php-ext-install pdo_mysql
    curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Установка Xdebug
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

# Конфигурация Xdebug
COPY xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

# Установка рабочей директории
WORKDIR /

# Устанавливаем необходимые зависимости
RUN 

# Установка Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Установка рабочего каталога (опционально)
WORKDIR /

# Копируем файлы проекта (опционально)
COPY . .

# Устанавливаем зависимости проекта
RUN composer install --no-dev --optimize-autoloader

# Указываем команду по умолчанию
CMD ["php", "-a"]
