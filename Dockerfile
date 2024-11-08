FROM ubuntu:latest

# Install Apache
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean

# Copy code to the web server directory
COPY ./index.html /var/www/html/

# Expose port 82 for the web server container
EXPOSE 82

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
