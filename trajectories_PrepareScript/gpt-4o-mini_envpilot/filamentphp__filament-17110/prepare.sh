
ls -R
open "composer.json"
apt-get install -y php8.1-mbstring php8.1-pdo php8.1-pdo-sqlite
apt-get update
apt-get install -y php8.1-mbstring php8.1-sqlite3
composer install
apt-get install -y composer
composer install
apt-get install -y php8.1-xml php8.1-simplexml
composer install
apt-cache policy php
add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php8.2 php8.2-mbstring php8.2-pdo php8.2-pdo-sqlite php8.2-xml php8.2-simplexml
echo 'deb https://ppa.launchpad.net/ondrej/php/ubuntu jammy main' | tee /etc/apt/sources.list.d/ondrej-php.list && apt-get update && apt-get install -y php8.2 php8.2-mbstring php8.2-pdo php8.2-pdo-sqlite php8.2-xml php8.2-simplexml
apt-get install -y php8.1 php8.1-mbstring php8.1-pdo php8.1-pdo-sqlite php8.1-xml php8.1-simplexml
composer update
apt-get install -y php8.1-zip
composer update
apt-get install -y php8.1-curl
composer update
vendor/bin/pest
apt-get install -y php8.1-gd
vendor/bin/pest
