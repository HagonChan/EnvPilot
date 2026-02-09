ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "composer.json"
open "phpunit.xml"
open "README.md"
apt-get update && apt-get install -y php php-mysql php-pgsql sqlite nodejs npm
composer install
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install
apt-get install -y php8.3 php8.3-intl php8.3-curl php8.3-bcmath php8.3-dom php8.3-xml
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.3 php8.3-intl php8.3-curl php8.3-bcmath php8.3-dom php8.3-xml
php -v
php -m
composer install
apt-get install -y zip unzip
composer install
php -m | grep mbstring
echo "extension=mbstring" > /etc/php/8.3/cli/conf.d/mbstring.ini && php -m | grep mbstring
apt-get install --reinstall -y php8.3-mbstring
php -m | grep mbstring
composer install
./vendor/bin/phpunit
touch database/database-test.sqlite && chmod 777 database/database-test.sqlite
npm install -g yarn
./vendor/bin/phpunit
apt-get install -y php8.3-sqlite3
php -m | grep sqlite
./vendor/bin/phpunit
open "tests/Unit/Helpers/WallpaperHelperTest.php"
open ".env"
create .env
edit '' APP_URL=http://localhost
ls -la .env
chmod 666 .env
edit '' APP_URL=http://localhost
echo "APP_URL=http://localhost" >> .env
./vendor/bin/phpunit
open "phpunit.xml"
ls -la .env.testing
create .env.testing
edit '' 'APP_ENV=testing
APP_KEY=base64:NTrXToqFZJlv48dgPc+kNpc3SBt333TfDnF1mDShsBg=
DB_CONNECTION=testing
DB_DATABASE=:memory:
'
chmod 666 .env.testing
edit '' 'APP_ENV=testing
APP_KEY=base64:NTrXToqFZJlv48dgPc+kNpc3SBt333TfDnF1mDShsBg=
DB_CONNECTION=testing
DB_DATABASE=:memory:
'
echo "APP_ENV=testing
APP_KEY=base64:NTrXToqFZJlv48dgPc+kNpc3SBt333TfDnF1mDShsBg=
DB_CONNECTION=testing
DB_DATABASE=:memory:
" > .env.testing
./vendor/bin/phpunit

