
find_file '*.yml'
open "/testbed/.github/workflows/run-tests.yml"
find_file composer.json
open "/testbed/composer.json"
php -v
apt update && apt install -y php8.2 php8.2-cli php8.2-xml php8.2-mbstring php8.2-zip php8.2-curl php8.2-sqlite3
add-apt-repository ppa:ondrej/php -y && apt update && apt install -y php8.2 php8.2-cli php8.2-xml php8.2-mbstring php8.2-zip php8.2-curl php8.2-sqlite3
echo 'deb http://ppa.launchpad.net/ondrej/php/ubuntu jammy main' | tee /etc/apt/sources.list.d/ondrej-php.list && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E5267A6C && apt update && apt install -y php8.2 php8.2-cli php8.2-xml php8.2-mbstring php8.2-zip php8.2-curl php8.2-sqlite3
apt update && apt install -y php php-cli php-xml php-mbstring php-zip php-curl php-sqlite3
apt update && apt install -y php php-cli php-xml php-mbstring php-zip php-curl php-sqlite3
rm /etc/apt/sources.list.d/ondrej-php.list && apt update && apt install -y php php-cli php-xml php-mbstring php-zip php-curl php-sqlite3
php -v
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt update && apt install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install
find_file README.md
open "/testbed/README.md"
