FROM ubuntu 
RUN apt update 
RUN apt install –y apache2 
RUN apt install –y apache2-utils 
RUN apt clean 
EXPOSE 82
CMD [“apache2ctl”, “-D”, “FOREGROUND”]

# Copy code to the web server directory
COPY ./index.html /var/www/html/


