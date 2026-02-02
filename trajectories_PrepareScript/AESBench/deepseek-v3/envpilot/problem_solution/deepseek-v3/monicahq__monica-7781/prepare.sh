ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "composer.json"
open "phpunit.xml"
open "package.json"
apt-get update && apt-get install -y php php-mysql php-pgsql sqlite nodejs npm
composer install
apt-get install -y composer
composer install
apt-get install -y php8.3 php8.3-mysql php8.3-pgsql php8.3-sqlite3 php8.3-curl php8.3-bcmath php8.3-dom php8.3-mbstring php8.3-xml
apt-get install -y software-properties-common && add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y php8.3 php8.3-mysql php8.3-pgsql php8.3-sqlite3 php8.3-curl php8.3-bcmath php8.3-dom php8.3-mbstring php8.3-xml
php -v
composer install
apt-get install -y php8.3-intl
composer install
npm install

