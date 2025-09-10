ls -la
open "composer.json"
ls -la .github/workflows
open ".github/workflows/tests.yml"
apt-get update && apt-get install -y php8.1-mbstring php8.1-pdo php8.1-sqlite3
composer install --no-interaction --prefer-dist
apt-get install -y composer
composer install --no-interaction --prefer-dist
apt-get install -y php8.2 php8.2-mbstring php8.2-pdo php8.2-sqlite3 php8.2-simplexml php8.2-dom php8.2-xml
add-apt-repository ppa:ondrej/php -y && apt-get update
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y && apt-get update
echo "deb https://ppa.launchpadcontent.net/ondrej/php/ubuntu focal main" >> /etc/apt/sources.list && apt-get update
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 71DAEAAB4AD4CAB6 4F4EA0AAE5267A6C && apt-get update
apt-get install -y php8.2 php8.2-mbstring php8.2-pdo php8.2-sqlite3 php8.2-simplexml php8.2-dom php8.2-xml
composer install --no-interaction --prefer-dist
apt-get install -y php8.1-simplexml php8.1-dom php8.1-xml
composer install --no-interaction --prefer-dist --ignore-platform-reqs
COMPOSER_PROCESS_TIMEOUT=600 composer install --no-interaction --prefer-dist --ignore-platform-reqs
./vendor/bin/pest
composer update --no-interaction --prefer-dist --ignore-platform-reqs
apt-get install -y php8.1-curl && COMPOSER_PROCESS_TIMEOUT=600 composer update --no-interaction --prefer-dist --ignore-platform-reqs
./vendor/bin/pest
composer require sebastian/version:^3.0 --no-interaction --prefer-dist --ignore-platform-reqs
add-apt-repository ppa:ondrej/php -y && apt-get update && apt-get install -y php8.2 php8.2-mbstring php8.2-pdo php8.2-sqlite3 php8.2-simplexml php8.2-dom php8.2-xml php8.2-curl
update-alternatives --set php /usr/bin/php8.2
composer install --no-interaction --prefer-dist
apt-get install -y php8.2-intl php8.2-zip
composer install --no-interaction --prefer-dist --ignore-platform-req=ext-intl --ignore-platform-req=ext-zip --ignore-platform-req=php-64bit
composer install --no-interaction --prefer-dist --ignore-platform-req=ext-intl --ignore-platform-req=ext-zip --ignore-platform-req=php-64bit --ignore-platform-req=php
./vendor/bin/pest
apt-get install -y php8.2-gd
./vendor/bin/pest
