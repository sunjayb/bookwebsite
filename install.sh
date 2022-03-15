#! /bin/bash

sudo apt-get update
sudo apt-get install -y --force-yes apache2
sudo systemctl start apache2
sudo mv pubsite.conf /etc/apache2/sites-available/
sudo mv index.html /var/www/html/
sudo mv styles.css /var/www/html/
sudo a2dissite 000-default
sudo a2ensite pubsite
sudo systemctl reload apache2
