#!/usr/bin/env sh

sudo dnf install httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo dnf install mariadb-server
sudo systemctl start mariadb
sudo systemctl enable mariadb
mysql_secure_installation
sudo dnf install php php-cli php-common php-gd php-mysqlnd php-pdo
sudo vim /etc/php.ini

#   memory_limit = 256M
#   upload_max_filesize = 128M
#   post_max_size = 128M

sudo vim /var/www/html/info.php

# <?php
# phpinfo();
