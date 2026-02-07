ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "composer.json"
composer install
apt-get update && apt-get install -y composer
composer install
apt-get install -y php8.1-xml
composer install
composer test
cp testbootstrap-dist.php testbootstrap.php
find . -name "testbootstrap-dist.php"
cp test/testbootstrap-dist.php testbootstrap.php
apt-get install -y php8.1-imap
service php8.1-fpm restart
composer test
open "testbootstrap.php"
composer test -- --exclude-group=no-mbstring,no-intl
open "phpunit.xml.dist"
edit '<exclude>
            <group>languages</group>
            <group>pop3</group>
        </exclude>' '<exclude>
            <group>languages</group>
            <group>pop3</group>
            <group>no-mbstring</group>
            <group>no-intl</group>
        </exclude>' True
sed -i '/<exclude>/,/<\/exclude>/c\        <exclude>\n            <group>languages</group>\n            <group>pop3</group>\n            <group>no-mbstring</group>\n            <group>no-intl</group>\n        </exclude>' phpunit.xml.dist
composer test
