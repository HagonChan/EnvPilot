find_file '*.yml' .
open ".github/workflows/tests.yml"
php -v
apt update && apt install -y php php-mbstring php-pdo php-sqlite3
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install
apt install -y php-intl php-xml php-simplexml
apt install -y php8.2 php8.2-mbstring php8.2-pdo php8.2-sqlite3 php8.2-intl php8.2-xml
add-apt-repository ppa:ondrej/php -y && apt update && apt install -y php8.2 php8.2-mbstring php8.2-pdo php8.2-sqlite3 php8.2-intl php8.2-xml
apt install -y software-properties-common
add-apt-repository ppa:ondrej/php -y && apt update && apt install -y php8.2 php8.2-mbstring php8.2-pdo php8.2-sqlite3 php8.2-intl php8.2-xml
composer install
apt install -y php8.2-zip php8.2-curl
composer install
vendor/bin/pest
apt install -y php8.2-gd
vendor/bin/pest
