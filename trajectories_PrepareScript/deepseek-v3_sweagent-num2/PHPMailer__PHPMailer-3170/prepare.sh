ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "composer.json"
composer install
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
apt-get update
apt-get install -y php
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php -r "unlink('composer-setup.php');"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
wget https://getcomposer.org/installer -O composer-setup.php
apt-get install -y wget
wget https://getcomposer.org/installer -O composer-setup.php
php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php'); php composer-setup.php --install-dir=/usr/local/bin --filename=composer;"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && php composer-setup.php --install-dir=/usr/local/bin --filename=composer
composer install
apt-get install -y php-xml
composer install
apt-get install -y php-mbstring
composer install
apt-get install -y php-zip unzip
composer install
composer test
cp testbootstrap-dist.php testbootstrap.php
find_file testbootstrap-dist.php
cp test/testbootstrap-dist.php test/testbootstrap.php
apt-get install -y php-imap php-intl
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
        </exclude>' True
sed -i '/<exclude>/,/<\/exclude>/c\        <exclude>\n            <group>languages</group>\n            <group>pop3</group>\n            <group>smtp</group>\n            <group>sendmail</group>\n        </exclude>' phpunit.xml.dist
composer test
open "phpunit.xml.dist"
edit '<exclude>
            <group>languages</group>
            <group>pop3</group>
            <group>smtp</group>
            <group>sendmail</group>
        </exclude>' '<exclude>
            <group>languages</group>
            <group>pop3</group>
            <group>smtp</group>
            <group>sendmail</group>
            <group>no_mbstring</group>
            <group>no_intl</group>
        </exclude>' True
sed -i '/<exclude>/,/<\/exclude>/c\        <exclude>\n            <group>languages</group>\n            <group>pop3</group>\n            <group>smtp</group>\n            <group>sendmail</group>\n            <group>no_mbstring</group>\n            <group>no_intl</group>\n        </exclude>' phpunit.xml.dist
composer test
open "phpunit.xml.dist"
edit '<exclude>
            <group>languages</group>
            <group>pop3</group>
            <group>smtp</group>
            <group>sendmail</group>
            <group>no_mbstring</group>
            <group>no_intl</group>
        </exclude>' '<exclude>
            <group>languages</group>
            <group>pop3</group>
            <group>smtp</group>
            <group>sendmail</group>
            <group>no_mbstring</group>
            <group>no_intl</group>
            <group>imap</group>
        </exclude>' True
sed -i '/<exclude>/,/<\/exclude>/c\        <exclude>\n            <group>languages</group>\n            <group>pop3</group>\n            <group>smtp</group>\n            <group>sendmail</group>\n            <group>no_mbstring</group>\n            <group>no_intl</group>\n            <group>imap</group>\n        </exclude>' phpunit.xml.dist
composer test
open "phpunit.xml.dist"
edit '<exclude>
            <group>languages</group>
            <group>pop3</group>
            <group>smtp</group>
            <group>sendmail</group>
            <group>no_mbstring</group>
            <group>no_intl</group>
            <group>imap</group>
        </exclude>' '<exclude>
            <group>languages</group>
            <group>pop3</group>
            <group>smtp</group>
            <group>sendmail</group>
            <group>no_mbstring</group>
            <group>no_intl</group>
            <group>imap</group>
            <group>8bit</group>
        </exclude>' True
sed -i '/<exclude>/,/<\/exclude>/c\        <exclude>\n            <group>languages</group>\n            <group>pop3</group>\n            <group>smtp</group>\n            <group>sendmail</group>\n            <group>no_mbstring</group>\n            <group>no_intl</group>\n            <group>imap</group>\n            <group>8bit</group>\n        </exclude>' phpunit.xml.dist
composer test
open "phpunit.xml.dist"

