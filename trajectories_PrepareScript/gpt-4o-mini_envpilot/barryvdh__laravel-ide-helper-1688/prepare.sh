ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/run-tests.yml"
apt-get update
apt-get install -y php8.2-pdo-sqlite php8.2-fileinfo
apt-cache search php | grep -i pdo
apt-cache search php
apt-get install -y php8.1-sqlite3 php8.1
composer require --dev barryvdh/laravel-ide-helper
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer require --dev barryvdh/laravel-ide-helper
apt-get install -y php8.2 php8.2-pdo php8.2-fileinfo php8.2-sqlite3
apt-cache search php | grep -i "php"
add-apt-repository ppa:ondrej/php
echo "deb https://ppa.launchpad.net/ondrej/php/ubuntu focal main" >> /etc/apt/sources.list.d/ondrej-php.list
apt-get update
apt-get install -y php8.1 php8.1-pdo php8.1-fileinfo php8.1-sqlite3
composer require --dev barryvdh/laravel-ide-helper
composer test-ci
composer global require phpunit/phpunit

