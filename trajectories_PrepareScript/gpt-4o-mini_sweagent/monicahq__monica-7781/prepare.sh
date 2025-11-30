find_file '*.yml' .
open ".github/workflows/tests.yml"
find_file composer.json .
open "composer.json"
php -v
apt update && apt install -y php8.3 php8.3-cli php8.3-common php8.3-intl php8.3-fileinfo
apt update && apt install -y php8.1 php8.1-cli php8.1-common php8.1-intl php8.1-fileinfo
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt update && apt install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install
apt update && apt install -y php8.3 php8.3-cli php8.3-common php8.3-intl php8.3-fileinfo php8.3-curl php8.3-bcmath php8.3-xml
apt update && apt install -y php8.2 php8.2-cli php8.2-common php8.2-intl php8.2-fileinfo php8.2-curl php8.2-bcmath php8.2-xml
apt-cache search php | grep php
apt update && apt install -y php8.1 php8.1-cli php8.1-common php8.1-intl php8.1-fileinfo php8.1-curl php8.1-bcmath php8.1-xml
composer install
add-apt-repository ppa:ondrej/php -y && apt update && apt install -y php8.3 php8.3-cli php8.3-common php8.3-intl php8.3-fileinfo php8.3-curl php8.3-bcmath php8.3-xml
apt update && apt install -y software-properties-common
add-apt-repository ppa:ondrej/php -y && apt update && apt install -y php8.3 php8.3-cli php8.3-common php8.3-intl php8.3-fileinfo php8.3-curl php8.3-bcmath php8.3-xml
composer install
apt install -y php8.3-zip
composer install
apt install -y php8.3-mbstring
composer install
vendor/bin/phpunit
mkdir -p database && touch database/database-test.sqlite
vendor/bin/phpunit
apt install -y php8.3-sqlite3
vendor/bin/phpunit
find_file phpunit.xml .
open "phpunit.xml"
insert 'DB_CONNECTION=sqlite
DB_DATABASE=/testbed/database/database-test.sqlite
' 0
vendor/bin/phpunit
create .env.testing
insert 'DB_CONNECTION=sqlite
DB_DATABASE=/testbed/database/database-test.sqlite
' 0
vendor/bin/phpunit
open ".env.testing"
find_file .env .
create .env
insert 'APP_ENV=testing
' 0
vendor/bin/phpunit
open ".env"
edit APP_ENV=testing 'APP_ENV=testing
DB_CONNECTION=sqlite
DB_DATABASE=/testbed/database/database-test.sqlite
'
insert 'DB_CONNECTION=sqlite
DB_DATABASE=/testbed/database/database-test.sqlite
' 1
vendor/bin/phpunit
rm .env && echo -e "APP_ENV=testing\nDB_CONNECTION=sqlite\nDB_DATABASE=/testbed/database/database-test.sqlite" > .env
vendor/bin/phpunit
ls -l .env
APP_ENV=testing vendor/bin/phpunit

