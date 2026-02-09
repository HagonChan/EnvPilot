ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
apt-get update && apt-get install -y php8.1 php8.1-mbstring php8.1-pdo php8.1-sqlite3
php -v
php -m | grep -E 'mbstring|pdo|sqlite'
apt-get install -y composer
composer --version
composer install
apt-get install -y php8.1-xml php8.1-dom
php -m | grep -E 'simplexml|dom|xml'
composer install --ignore-platform-reqs
./vendor/bin/pest
apt-get install -y php8.2 php8.2-mbstring php8.2-pdo php8.2-sqlite3 php8.2-xml php8.2-dom
apt-get install -y software-properties-common && add-apt-repository -y ppa:ondrej/php && apt-get update
apt-get install -y php8.2 php8.2-mbstring php8.2-pdo php8.2-sqlite3 php8.2-xml php8.2-dom
php -v
php -m | grep -E 'mbstring|pdo|sqlite|xml|dom'
composer install
apt-get install -y php8.2-intl php8.2-zip php8.2-curl
php -m | grep -E 'intl|zip|curl'
composer install
./vendor/bin/pest
apt-get install -y php8.2-gd
php -m | grep gd
./vendor/bin/pest
