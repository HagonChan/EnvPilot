ls -la
ls -la .github/workflows
open ".github/workflows/tests.yaml"
php -v
apt-get update && apt-get install -y php8.1 php8.1-opcache php8.1-gd
apt-get install -y php8.1 php8.1-opcache php8.1-gd
php -v
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
wget https://getcomposer.org/installer -O composer-setup.php
apt-get install -y wget
wget https://getcomposer.org/installer -O composer-setup.php
php composer-setup.php --install-dir=/usr/local/bin --filename=composer
composer --version
composer install --prefer-dist --no-progress
apt-get install -y php8.1-curl php8.1-zip php8.1-xml
composer install --prefer-dist --no-progress
vendor/bin/codecept run
apt-get install -y php8.1-mbstring
vendor/bin/codecept run
