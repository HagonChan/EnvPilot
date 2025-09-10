ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "composer.json"
open "phpunit.xml"
apt-get update && apt-get install -y sqlite mysql-server postgresql
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.3 php8.3-cli php8.3-mysql php8.3-pgsql php8.3-sqlite3 php8.3-xml php8.3-mbstring php8.3-zip php8.3-curl php8.3-gd php8.3-bcmath php8.3-intl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'e21205b207c3ff031906575712edab6f13eb0b361f2085f1f1237b7126d785e826a450292b6cfd1d64d92e6563bbde02') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
rm composer-setup.php && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'e21205b207c3ff031906575712edab6f13eb0b361f2085f1f1237b7126d785e826a450292b6cfd1d64d92e6563bbde02') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
ls -la composer.phar
apt-get install -y composer
composer install
php artisan test
mkdir -p database && touch database/database-test.sqlite
php artisan test
php artisan migrate --env=testing
service mysql start
df -h
du -sh /* | sort -rh | head -n 10
nix-collect-garbage -d
du -sh /var/log
du -sh /tmp
docker --version
open ".env.testing"
create .env.testing
insert 'DB_CONNECTION=sqlite
DB_DATABASE=/testbed/database/database-test.sqlite'
php artisan migrate --env=testing
php artisan test
edit 'DB_CONNECTION=sqlite
DB_DATABASE=/testbed/database/database-test.sqlite' 'APP_URL=http://localhost
DB_CONNECTION=sqlite
DB_DATABASE=/testbed/database/database-test.sqlite' True
insert APP_URL=http://localhost
php artisan test
