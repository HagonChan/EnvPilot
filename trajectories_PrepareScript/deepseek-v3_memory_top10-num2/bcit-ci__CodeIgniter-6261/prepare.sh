ls
open "composer.json"
open "readme.rst"
ls tests
open "tests/phpunit.xml"
ls tests/travis
apt-get update
apt-get install -y php php-xml php-mbstring php-zip php-gd php-curl php-json sqlite3 pgsql mysqli pdo pdo_mysql pdo_pgsql pdo_sqlite
apt-get install -y php php-xml php-mbstring php-zip php-gd php-curl php-json php-sqlite3 php-pgsql php-mysql php-pdo php-mysql php-pgsql php-sqlite3
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install --no-progress --prefer-dist --optimize-autoloader
./vendor/bin/phpunit
./vendor/bin/phpunit tests/codeigniter
ls tests/codeigniter
./vendor/bin/phpunit tests/codeigniter/core
open "tests/phpunit.xml"
ls tests/codeigniter/core
./vendor/bin/phpunit -c tests/phpunit.xml
