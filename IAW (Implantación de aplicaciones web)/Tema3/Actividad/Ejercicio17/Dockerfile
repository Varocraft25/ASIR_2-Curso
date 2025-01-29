# Use the official PHP Apache image as a base
FROM php:8.1-apache

# Install mysqli extension and other common extensions
RUN docker-php-ext-install mysqli

# Enable Apache mod_rewrite for URL routing (optional, but useful for frameworks)
RUN a2enmod rewrite