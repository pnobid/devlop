FROM ubuntu
RUN apt update
RUN apt install apache2 -y
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
EXPOSE 82
CMD [“apache2ctl”, “-D”, “FOREGROUND”]

# Copy code to the web server directory
COPY ./index.html /var/www/html/


