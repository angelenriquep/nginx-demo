FROM debian:bookworm

# Install Apache and envsubst for config templating
RUN apt-get update && \
    apt-get install -y apache2 gettext-base && \
    apt-get clean


RUN echo "ServerName localhost" > /etc/apache2/conf-available/fqdn.conf && \
    a2enconf fqdn

RUN a2enmod rewrite headers setenvif


COPY custom.conf.template /etc/apache2/sites-available/000-default.conf.template
COPY public-html/ /var/www/html/
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

RUN chmod +x /usr/local/bin/docker-entrypoint.sh

WORKDIR /var/www/html
RUN chown -R www-data:www-data /var/www/html

ENV BACKEND_NAME=default-server

EXPOSE 80

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["apachectl", "-D", "FOREGROUND"]
