find_file '*.yml' .
open "/testbed/.github/workflows/main.yml"
find_file composer.json .
open "/testbed/composer.json"
composer --version
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt update && apt install -y php php-cli php-xml php-mbstring php-tokenizer php-json php-ctype
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && php composer-setup.php --install-dir=/usr/local/bin --filename=composer && php -r "unlink('composer-setup.php');"
composer install
apt install -y php-zip unzip
composer install
vendor/bin/phpunit
