ls -la
ls -la .github/workflows
open ".github/workflows/test-phpunit.yml"
open "composer.json"
open "readme.rst"
apt-get update && apt-get install -y php php-xml php-mbstring php-zip php-gd php-curl php-json php-sqlite3 php-pgsql php-mysql
composer install --no-progress --prefer-dist --optimize-autoloader
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
rm composer-setup.php && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "copy('http://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
apt-get install -y wget && wget https://getcomposer.org/installer -O composer-setup.php
wget http://getcomposer.org/installer -O composer-setup.php
php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
apt-get install -y composer
composer install --no-progress --prefer-dist --optimize-autoloader
phpunit
./vendor/bin/phpunit
ls -la tests
./vendor/bin/phpunit -c tests/phpunit.xml
