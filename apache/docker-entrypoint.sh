#!/bin/bash

# Replace placeholder in Apache config
envsubst '${BACKEND_NAME}' < /etc/apache2/sites-available/000-default.conf.template > /etc/apache2/sites-available/000-default.conf

# Restart Apache with substituted config
exec "$@"
