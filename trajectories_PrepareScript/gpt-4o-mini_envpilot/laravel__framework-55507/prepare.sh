ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
apt-get install -y liblz4-dev liblzf-dev libzstd-dev libssl-dev libpcre2-dev
apt-get update
apt-get install -y liblz4-dev liblzf-dev libzstd-dev libssl-dev libpcre2-dev
composer update --prefer-dist --no-interaction --no-progress
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y php curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer update --prefer-dist --no-interaction --no-progress
apt-get install -y php8.2 php8.2-gmp
add-apt-repository ppa:ondrej/php -y
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y
apt-get update
apt-get install -y php8.2 php8.2-gmp
apt-get install -y php8.2-dom php8.2-curl php8.2-libxml php8.2-mbstring php8.2-zip php8.2-pcntl php8.2-pdo php8.2-sqlite3 php8.2-pdo-sqlite php8.2-gd php8.2-redis php8.2-igbinary php8.2-msgpack php8.2-memcached php8.2-gmp php8.2-psr
apt-get install -y php8.2-gd php8.2-redis php8.2-igbinary php8.2-msgpack php8.2-memcached php8.2-gmp php8.2-psr
composer update --prefer-dist --no-interaction --no-progress
apt-get install -y php8.2-xml
composer update --prefer-dist --no-interaction --no-progress
apt-get install -y php8.2-curl
composer update --prefer-dist --no-interaction --no-progress
apt-get install -y php8.2-zip
composer update --prefer-dist --no-interaction --no-progress
vendor/bin/phpunit
apt-get install -y php8.2-mbstring
vendor/bin/phpunit
apt-get install -y php8.2-mysql
vendor/bin/phpunit
open "composer.json"
composer show
composer clear-cache
composer install --prefer-dist --no-interaction --no-progress
vendor/bin/phpunit
composer show psr/log
open "composer.json"
edit '"psr/log": "^1.0|^2.0|^3.0",' '"psr/log": "^2.0",' True
echo -e '#!/bin/bash\nsed -i \'s/"psr\/log": "^1.0|^2.0|^3.0"/"psr\/log": "^2.0"/' composer.json' > update_composer.sh && chmod +x update_composer.sh
./update_composer.sh
echo -e '#!/bin/bash\nsed -i \'s/"psr\/log": "\^1.0|\^2.0|\^3.0"/"psr\/log": "\^2.0"/' composer.json' > update_composer.sh && chmod +x update_composer.sh
./update_composer.sh
echo -e '#!/bin/bash\nsed -i \'s/"psr\/log": "[^"]*"/"psr\/log": "^2.0"/' composer.json' > update_composer.sh && chmod +x update_composer.sh
echo -e '#!/bin/bash\nsed -i \'s/"psr\/log": "[^"]*"/"psr\/log": "^2.0"/' composer.json' > update_composer.sh && chmod +x update_composer.sh
echo -e '#!/bin/bash\nsed -i \'s/"psr\/log": "[^"]*"/"psr\/log": "^2.0"/' composer.json' > update_composer.sh && chmod +x update_composer.sh

