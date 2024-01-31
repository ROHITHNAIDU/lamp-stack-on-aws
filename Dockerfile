FROM php:8.1-apache

# Create the inc directory and copy dbinfo.inc
RUN mkdir /var/www/inc && \
    cp dbinfo.inc /var/www/inc

# Copy the rest of the application code
COPY . /var/www/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start the Apache web server in the foreground
CMD ["apache2-foreground"]
