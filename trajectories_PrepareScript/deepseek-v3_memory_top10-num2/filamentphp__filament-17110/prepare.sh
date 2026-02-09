ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
apt-get update && apt-get install -y php8.1 php8.1-mbstring php8.1-pdo php8.1-sqlite3
composer install --no-interaction
apt-get install -y composer
composer install --no-interaction
apt-get install -y php8.1-xml php8.1-dom
composer install --no-interaction --ignore-platform-reqs
./vendor/bin/pest
open "./vendor/sebastian/version/src/Version.php" 23
composer require sebastian/version:3.0.2 --no-interaction --ignore-platform-reqs
composer require phpunit/phpunit:9.6.15 --no-interaction --ignore-platform-reqs
apt-get install -y php8.2 php8.2-mbstring php8.2-pdo php8.2-sqlite3 php8.2-xml php8.2-dom
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.2 php8.2-mbstring php8.2-pdo php8.2-sqlite3 php8.2-xml php8.2-dom
php -v
composer install --no-interaction
apt-get install -y php8.2-intl php8.2-zip php8.2-curl
composer install --no-interaction
./vendor/bin/pest
apt-get install -y php8.2-gd
./vendor/bin/pest
