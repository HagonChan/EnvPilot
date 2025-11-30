
ls -R
cat composer.json
apt-get update && apt-get install -y git zip php-opcache php-gd
php composer.phar install --prefer-dist --no-progress
apt-get install -y php php-openssl php-curl php-json
apt-get install -y php8.1 php8.1-openssl php8.1-curl php8.1-json
add-apt-repository universe && apt-get update
echo 'deb http://archive.ubuntu.com/ubuntu/ jammy universe' | tee -a /etc/apt/sources.list && apt-get update
apt-get install -y php php-openssl php-curl php-json
php -v && apt-cache search php | grep php
apt-get install -y php php-zip php-gd php-curl php-json php-openssl
apt-get install -y php
apt-get install -y php-zip php-gd php-curl php-json php-openssl
apt-get install -y php8.1-zip php8.1-gd php8.1-curl php8.1-json php8.1-openssl
apt-cache search php8.1
apt-get install -y php8.1-curl php8.1-gd php8.1-zip php8.1-opcache
composer install --prefer-dist --no-progress
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
wget -O composer-setup.php https://getcomposer.org/installer && php composer-setup.php --install-dir=/usr/local/bin --filename=composer
echo "<?php

$installer = file_get_contents('https://getcomposer.org/installer');
file_put_contents('composer-setup.php', $installer);

if (hash_file('sha384', 'composer-setup.php') === 'e1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1') ) {
    echo 'Installer verified';
} else {
    echo 'Installer corrupt';
    unlink('composer-setup.php');
    exit(1);
}

require 'composer-setup.php';
unlink('composer-setup.php');
" > install_composer.php
php install_composer.php
echo "<?php

$installer = file_get_contents('https://getcomposer.org/installer');
file_put_contents('composer-setup.php', $installer);

if (hash_file('sha384', 'composer-setup.php') === 'e1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1') ) {
    echo 'Installer verified';
} else {
    echo 'Installer corrupt';
    unlink('composer-setup.php');
    exit(1);
}

require 'composer-setup.php';
unlink('composer-setup.php');
" > install_composer.php
php install_composer.php
echo "<?php

$installer = file_get_contents('https://getcomposer.org/installer');
file_put_contents('composer-setup.php', $installer);

if (hash_file('sha384', 'composer-setup.php') === 'e1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1c1') ) {
    echo 'Installer verified';
} else {
    echo 'Installer corrupt';
    unlink('composer-setup.php');
    exit(1);
}

require 'composer-setup.php';
unlink('composer-setup.php');
" > install_composer.php
php install_composer.php
echo "<?php

file_put_contents('composer-setup.php', file_get_contents('https://getcomposer.org/installer'));
require 'composer-setup.php';
unlink('composer-setup.php');
" > install_composer.php
php install_composer.php
mv composer.phar /usr/local/bin/composer
composer install --prefer-dist --no-progress
apt-get install -y php8.1-xml
composer install --prefer-dist --no-progress
vendor/bin/codecept run unit
apt-get install -y php8.1-mbstring
vendor/bin/codecept run unit
