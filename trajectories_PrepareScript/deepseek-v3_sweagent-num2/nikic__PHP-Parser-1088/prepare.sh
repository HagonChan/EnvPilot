ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
php -v
apt-get update
apt-get install -y php7.4 php7.4-cli php7.4-xml php7.4-mbstring php7.4-json composer
add-apt-repository ppa:ondrej/php -y
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y
apt-get update
apt-get install -y php7.4 php7.4-cli php7.4-xml php7.4-mbstring php7.4-json composer
php -v
composer --version
apt-get remove -y composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php -r "unlink('composer-setup.php');"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php -r "unlink('composer-setup.php');"
curl -s https://getcomposer.org/installer -o composer-setup.php
apt-get install -y curl
curl -s https://getcomposer.org/installer -o composer-setup.php
php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php -r "unlink('composer-setup.php');"
curl -s https://getcomposer.org/installer -o composer-setup.php
curl -s https://composer.github.io/installer.sig
php -r "if (hash_file('sha384', 'composer-setup.php') === 'c8b085408188070d5f52bcfe4ecfbee5f727afa458b2573b8eaaf77b3419b0bf2768dc67c86944da1544f06fa544fd47') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php --install-dir=/usr/local/bin --filename=composer
composer --version
ls -la /usr/local/bin/composer
export PATH=$PATH:/usr/local/bin
composer --version
composer install
apt-get install -y php7.4-curl
service php7.4-fpm restart
php -m
composer install
open "composer.json"
cat composer.json
composer install --no-dev
edit '"require-dev": {
        "phpunit/phpunit": "^9.0",
        "ircmaxell/php-yacc": "^0.0.7"
    },' '' True
sed -i '/"require-dev": {/,/}/d' composer.json
composer install --no-dev
php vendor/bin/phpunit
cat Makefile
ls -la tests
ls -la
phpunit --version

