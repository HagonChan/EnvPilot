ls -la
ls -la .github/workflows
open ".github/workflows/test-phpunit.yml"
scroll_down
sudo apt update && sudo apt install -y php8.1 php8.1-cli php8.1-mbstring php8.1-sqlite3 php8.1-pgsql php8.1-mysql php8.1-xml php8.1-zip php8.1-curl php8.1-gd php8.1-intl php8.1-xdebug
apt update && apt install -y php8.1 php8.1-cli php8.1-mbstring php8.1-sqlite3 php8.1-pgsql php8.1-mysql php8.1-xml php8.1-zip php8.1-curl php8.1-gd php8.1-intl php8.1-xdebug
apt install -y php8.1 php8.1-cli php8.1-mbstring php8.1-sqlite3 php8.1-pgsql php8.1-mysql php8.1-xml php8.1-zip php8.1-curl php8.1-gd php8.1-intl php8.1-xdebug
php -v
php -m
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer --version
composer install
open "composer.json"
composer test:coverage
