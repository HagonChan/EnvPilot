
ls -R
open "composer.json"
open "README.md"
apt-get update && apt-get install -y php php-mysql php-pgsql sqlite nodejs npm
composer install
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install
add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php8.3 php8.3-mysql php8.3-pgsql php8.3-sqlite3 php8.3-intl php8.3-curl php8.3-xml
apt-get update && apt-get install -y software-properties-common && apt-get install -y php8.3 php8.3-mysql php8.3-pgsql php8.3-sqlite3 php8.3-intl php8.3-curl php8.3-xml
apt-get install -y php8.2 php8.2-mysql php8.2-pgsql php8.2-sqlite3 php8.2-intl php8.2-curl php8.2-xml
apt-get install -y php php-mysql php-pgsql php-sqlite3 php-intl php-curl php-xml
composer install
apt-get install -y php8.1-bcmath
composer install --ignore-platform-reqs
apt-get install -y php8.1-zip unzip
composer install --ignore-platform-reqs
composer config --global process-timeout 600
composer install --ignore-platform-reqs
search_file test README.md
./vendor/bin/phpunit

exit_forfeit

exit_forfeit

exit_forfeit

exit_forfeit

exit_forfeit

exit_forfeit

exit_forfeit

exit_forfeit

exit_forfeit

exit_forfeit

exit_forfeit

exit_forfeit

exit_forfeit

