ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/continuous-integration.yml"
open "composer.json"
apt-get update
apt-get install -y php php-cli php-pdo php-xml php-mbstring php-json php-sqlite3 php-mysql php-pgsql
php -v
apt-cache search php8.3
add-apt-repository ppa:ondrej/php -y
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y
apt-get update
apt-get install -y php8.3 php8.3-cli php8.3-pdo php8.3-xml php8.3-mbstring php8.3-json php8.3-sqlite3 php8.3-mysql php8.3-pgsql
apt-get install -y php8.3 php8.3-cli php8.3-common php8.3-xml php8.3-mbstring php8.3-sqlite3 php8.3-mysql php8.3-pgsql
php -v
update-alternatives --list php
update-alternatives --set php /usr/bin/php8.3
php -v
composer --version
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer --version
composer install
composer config audit.ignore "PKSA-z3gr-8qht-p93v"
composer install
apt-get install -y zip unzip
composer config process-timeout 600
composer install
vendor/bin/phpunit -c ci/github/phpunit/phpunit.xml
find . -name "phpunit*.xml"
open "phpunit.xml.dist"
vendor/bin/phpunit -c phpunit.xml.dist
