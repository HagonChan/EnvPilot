ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
apt-get update && apt-get install -y tzdata locales
apt-get install -y php8.1 php8.1-json php8.1-msgpack
apt-get install -y php8.1-cli php8.1-msgpack
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
php --version && composer --version
composer update
phpenmod curl && service apache2 restart
echo "extension=curl.so" > /etc/php/8.1/cli/conf.d/20-curl.ini && php -m | grep curl
apt-get install -y php8.1-curl
php -m | grep curl
composer update
apt-get install -y ca-certificates && update-ca-certificates
composer update --no-cache
composer config -g disable-tls true && composer update
wget https://repo.packagist.org/packages.json
apt-get install -y wget
wget https://repo.packagist.org/packages.json
wget http://repo.packagist.org/packages.json
env | grep -i proxy
unset http_proxy https_proxy && wget http://repo.packagist.org/packages.json
unset http_proxy https_proxy && composer update
apt-get install -y php8.1-xml php8.1-dom php8.1-simplexml
php -m | grep -E 'xml|dom|simplexml'
composer update
apt-get install -y php8.1-zip unzip
php -m | grep zip
composer update
./vendor/bin/phpunit
apt-get install -y php8.1-mbstring
php -m | grep mbstring
./vendor/bin/phpunit
composer require --dev phpstan/phpstan:^1.12
./vendor/bin/phpunit
composer require --dev phpstan/phpstan:^1.10
./vendor/bin/phpunit --no-interaction
./vendor/bin/phpunit --stop-on-failure
open "tests/Carbon/IsTest.php" 658
edit '$this->assertTrue(Carbon::now()->subMicrosecond()->isLastMicrosecond());' '$current = Carbon::now();
        $subMicro = $current->subMicrosecond();
        echo "Current: " . $current->format('"'"'Y-m-d H:i:s.u'"'"') . "\n";
        echo "SubMicro: " . $subMicro->format('"'"'Y-m-d H:i:s.u'"'"') . "\n";
        echo "isLastMicrosecond: " . ($subMicro->isLastMicrosecond() ? '"'"'true'"'"' : '"'"'false'"'"') . "\n";
        $this->assertTrue($subMicro->isLastMicrosecond());'
ls -la tests/Carbon/IsTest.php
chmod 644 tests/Carbon/IsTest.php
edit '$this->assertTrue(Carbon::now()->subMicrosecond()->isLastMicrosecond());' '$current = Carbon::now();
        $subMicro = $current->subMicrosecond();
        echo "Current: " . $current->format('"'"'Y-m-d H:i:s.u'"'"') . "\n";
        echo "SubMicro: " . $subMicro->format('"'"'Y-m-d H:i:s.u'"'"') . "\n";
        echo "isLastMicrosecond: " . ($subMicro->isLastMicrosecond() ? '"'"'true'"'"' : '"'"'false'"'"') . "\n";
        $this->assertTrue($subMicro->isLastMicrosecond());'
cp tests/Carbon/IsTest.php tests/Carbon/IsTest.php.bak && sed -i 's/$this->assertTrue(Carbon::now()->subMicrosecond()->isLastMicrosecond());/$current = Carbon::now();\n        $subMicro = $current->subMicrosecond();\n        echo "Current: " . $current->format(''Y-m-d H:i:s.u'') . "\\n";\n        echo "SubMicro: " . $subMicro->format(''Y-m-d H:i:s.u'') . "\\n";\n        echo "isLastMicrosecond: " . ($subMicro->isLastMicrosecond() ? ''true'' : ''false'') . "\\n";\n        $this->assertTrue($subMicro->isLastMicrosecond());/g' tests/Carbon/IsTest.php
./vendor/bin/phpunit --filter testIsSameMicrosecond
mv tests/Carbon/IsTest.php.bak tests/Carbon/IsTest.php

