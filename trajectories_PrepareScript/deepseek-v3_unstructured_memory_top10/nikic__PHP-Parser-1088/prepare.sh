ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
apt-get update && apt-get install -y php7.4 php7.4-xdebug composer
apt-get install -y php-pear php7.4-dev && pecl install xdebug
add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php7.4 php7.4-xdebug composer
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php7.4 php7.4-xdebug composer
composer require nikic/php-parser && composer update --no-progress --prefer-dist
composer update --no-progress --prefer-dist
php -v
update-alternatives --set php /usr/bin/php7.4
php -v
php vendor/bin/phpunit
composer install --no-progress --prefer-dist
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && php composer-setup.php --install-dir=/usr/local/bin --filename=composer --version=2.2.18 && php -r "unlink('composer-setup.php');"
composer --version
php composer.phar install --no-progress --prefer-dist
php -r "copy('https://getcomposer.org/composer.phar', 'composer.phar');"
php composer.phar install --no-progress --prefer-dist
php composer.phar config -g --unset repos.packagist && php composer.phar config -g repo.packagist composer https://repo.packagist.org && php composer.phar install --no-progress --prefer-dist
apt-get install -y php7.4-curl
php -m | grep curl
php composer.phar install --no-progress --prefer-dist
apt-get install -y php7.4-xml
php -m | grep dom
php composer.phar install --no-progress --prefer-dist
apt-get install -y php7.4-mbstring
apt-get clean
apt-get install -y php7.4-mbstring
apt-get autoremove -y
wget http://archive.ubuntu.com/ubuntu/pool/main/p/php7.4/php7.4-mbstring_7.4.3-4ubuntu2.18_amd64.deb && dpkg -i php7.4-mbstring_7.4.3-4ubuntu2.18_amd64.deb
apt-get install -y wget
curl -O http://archive.ubuntu.com/ubuntu/pool/main/p/php7.4/php7.4-mbstring_7.4.3-4ubuntu2.18_amd64.deb
apt-get install -y curl
rm -rf /tmp/*
apt-get install -y curl
rm -rf /var/cache/apt/archives/*
apt-get install -y curl
rm -rf /var/log/*
apt-get install -y curl
rm -rf /var/cache/apt/archives/partial/ && apt-get install -y curl
rm -rf /var/cache/apt/archives/* && apt-get install -y --no-install-recommends curl
rm -rf /var/cache/apt/archives/* && apt-get install -y --no-install-recommends curl
curl --version
curl -O http://archive.ubuntu.com/ubuntu/pool/main/p/php7.4/php7.4-mbstring_7.4.3-4ubuntu2.18_amd64.deb && dpkg -i php7.4-mbstring_7.4.3-4ubuntu2.18_amd64.deb
curl -O https://mirrors.edge.kernel.org/ubuntu/pool/main/p/php7.4/php7.4-mbstring_7.4.3-4ubuntu2.18_amd64.deb && dpkg -i php7.4-mbstring_7.4.3-4ubuntu2.18_amd64.deb
apt-get install -y php7.4-mbstring
php -m | grep mbstring

