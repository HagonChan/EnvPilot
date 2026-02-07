ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "composer.json"
open "phpunit.xml.dist"
apt-get update && apt-get install -y tzdata locales
php -v
apt-get install -y php8.1
php -v
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer --version
composer install
apt-get install -y php8.1-xml php8.1-dom php8.1-simplexml
composer install
apt-get install -y php8.1-zip unzip
composer install
./vendor/bin/phpunit
apt-get install -y php8.1-mbstring
./vendor/bin/phpunit
composer update phpstan/phpstan --with-dependencies
./vendor/bin/phpunit --exclude-group phpstan
edit '<testsuites>' '<testsuites>
        <testsuite name="Main">
            <directory>tests/Carbon</directory>
            <directory>tests/CarbonImmutable</directory>
            <directory>tests/Doctrine</directory>
            <directory>tests/Laravel</directory>
            <directory>tests/Neos</directory>
            <directory>tests/Symfony</directory>
            <exclude>tests/PHPStan</exclude>
        </testsuite>' False
cp phpunit.xml.dist phpunit.xml.dist.bak
sed -i '/<testsuites>/a \        <testsuite name="Main">
            <directory>tests/Carbon</directory>
            <directory>tests/CarbonImmutable</directory>
            <directory>tests/Doctrine</directory>
            <directory>tests/Laravel</directory>
            <directory>tests/Neos</directory>
            <directory>tests/Symfony</directory>
            <exclude>tests/PHPStan</exclude>
        </testsuite>' phpunit.xml.dist
echo '<testsuites>
        <testsuite name="Main">
            <directory>tests/Carbon</directory>
            <directory>tests/CarbonImmutable</directory>
            <directory>tests/Doctrine</directory>
            <directory>tests/Laravel</directory>
            <directory>tests/Neos</directory>
            <directory>tests/Symfony</directory>
            <exclude>tests/PHPStan</exclude>
        </testsuite>
    </testsuites>' > phpunit.xml.dist.tmp && grep -v '<testsuites>' phpunit.xml.dist >> phpunit.xml.dist.tmp && mv phpunit.xml.dist.tmp phpunit.xml.dist
./vendor/bin/phpunit
mv phpunit.xml.dist.bak phpunit.xml.dist
./vendor/bin/phpunit --exclude-group phpstan
sed -i '/<phpstan>/,/<\/phpstan>/d' phpunit.xml.dist
./vendor/bin/phpunit
composer remove phpstan/phpstan --dev
composer update
./vendor/bin/phpunit --exclude-group phpstan
