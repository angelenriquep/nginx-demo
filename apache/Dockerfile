FROM debian:bookworm

RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean

RUN echo "ServerName localhost" > /etc/apache2/conf-available/fqdn.conf && \
    a2enconf fqdn

RUN a2enmod rewrite headers setenvif

COPY custom.conf /etc/apache2/sites-available/000-default.conf
COPY public-html/ /var/www/html/

WORKDIR /var/www/html
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
