ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
php -v
apt-get update && apt-get install -y php8.1 php8.1-mbstring php8.1-pdo php8.1-sqlite3 composer
sed -i '/security.ubuntu.com/d' /etc/apt/sources.list && apt-get update && apt-get install -y php8.1 php8.1-mbstring php8.1-pdo php8.1-sqlite3 composer
php -v
composer install --no-interaction --prefer-dist
apt-get install -y php8.1-xml php8.1-dom
php -m | grep -E 'simplexml|dom|xml'
apt-get install -y php8.2 php8.2-mbstring php8.2-pdo php8.2-sqlite3 php8.2-xml php8.2-dom
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.2 php8.2-mbstring php8.2-pdo php8.2-sqlite3 php8.2-xml php8.2-dom
php -v
composer install --no-interaction --prefer-dist
apt-get install -y php8.2-intl php8.2-zip php8.2-curl
php -m | grep -E 'intl|zip|curl'
composer install --no-interaction --prefer-dist
./vendor/bin/pest
apt-get install -y php8.2-gd
php -m | grep gd
./vendor/bin/pest --filter=it\ Up
./vendor/bin/pest
