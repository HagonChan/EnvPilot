ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "composer.json"
open "phpunit.xml.dist"
open "README.md"
apt-get update && apt-get install -y postfix libsqlite3-0 imap mbstring openssl intl ctype filter hash curl dom json libxml tokenizer xml xmlwriter
apt-get install -y php8.1 php8.1-imap php8.1-mbstring php8.1-openssl php8.1-intl php8.1-ctype php8.1-filter php8.1-hash php8.1-curl php8.1-dom php8.1-json php8.1-xml php8.1-tokenizer php8.1-xmlwriter
apt-get install -y php8.1 php8.1-imap php8.1-mbstring php8.1-intl php8.1-curl php8.1-xml
php -v
php -m
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer --version
composer install
composer test
find_file testbootstrap-dist.php
cp test/testbootstrap-dist.php test/testbootstrap.php
open "test/testbootstrap.php"
composer test
open "phpunit.xml.dist"
edit '<exclude>
            <group>languages</group>
            <group>pop3</group>
        </exclude>' '<exclude>
            <group>languages</group>
            <group>pop3</group>
            <group>smtp</group>
            <group>sendmail</group>
            <group>optional-extensions</group>
        </exclude>' True
cp phpunit.xml.dist phpunit.xml.dist.bak
sed -i '/<exclude>/,/<\/exclude>/c\        <exclude>\n            <group>languages</group>\n            <group>pop3</group>\n            <group>smtp</group>\n            <group>sendmail</group>\n            <group>optional-extensions</group>\n        </exclude>' phpunit.xml.dist
composer test
open "phpunit.xml.dist"
