find_file '*.yml' .
open ".github/workflows/trigger-skeletons.yml"
open ".travis.yml"
find_file composer.json .
open "composer.json"
apt update
apt install -y php-json php-openssl php-curl php-zip php-xml php-gd
php -v
apt install -y php php-json php-openssl php-curl php-zip php-xml php-gd
apt-cache search php | grep -i openssl
add-apt-repository ppa:ondrej/php -y
apt install -y software-properties-common
apt-add-repository ppa:ondrej/php -y
apt update
apt install -y php php-json php-openssl php-curl php-zip php-xml php-gd
apt install -y php php-common php-json php-curl php-zip php-xml php-gd
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install
vendor/bin/codecept run
apt install -y php-mbstring
vendor/bin/codecept run
