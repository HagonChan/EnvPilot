ls -la
open ".travis.yml"
open "composer.json"
open "codeception.yml"
php -v
apt-get update && apt-get install -y php7.4 php7.4-cli php7.4-curl php7.4-json php7.4-zip php7.4-dom php7.4-gd php7.4-mbstring php7.4-openssl php7.4-xml
apt-get install -y php8.0 php8.0-cli php8.0-curl php8.0-json php8.0-zip php8.0-dom php8.0-gd php8.0-mbstring php8.0-openssl php8.0-xml
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.0 php8.0-cli php8.0-curl php8.0-json php8.0-zip php8.0-dom php8.0-gd php8.0-mbstring php8.0-openssl php8.0-xml
php -v
dpkg -l | grep php8.0
apt-get install -y php8.0
php -v
php -m
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer --version
composer install
php -m
apt-get install -y php8.0-curl php8.0-zip php8.0-dom php8.0-gd
php -m | grep -E 'curl|zip|dom|gd'
composer install
vendor/bin/codecept run
php -m | grep mbstring
echo 'extension=mbstring' | sudo tee /etc/php/8.0/mods-available/mbstring.ini && sudo phpenmod mbstring
echo 'extension=mbstring' > /etc/php/8.0/mods-available/mbstring.ini && phpenmod mbstring
php -m | grep mbstring
apt-get install -y php8.0-mbstring
php -m | grep mbstring
vendor/bin/codecept run
