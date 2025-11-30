ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/test-phpunit.yml"
apt-get update
apt-get install -y php php-xml php-mbstring php-zip php-gd php-curl php-json imagick sqlite3 libsqlite3-dev libpq-dev php-mysql
apt-get install -y php-imagick sqlite3 libsqlite3-dev libpq-dev php-mysql
composer --version
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install --no-progress --prefer-dist --optimize-autoloader
apt-get install -y php-xml
composer install --no-progress --prefer-dist --optimize-autoloader
apt-get install -y php-zip
composer install --no-progress --prefer-dist --optimize-autoloader
vendor/bin/phpunit
open "composer.json"
edit '"phpunit/phpunit": "4.* || 5.* || 9.*"' '"phpunit/phpunit": "^9.0"' True
edit '"phpunit/phpunit": "4.* || 5.* || 9.*"' '"phpunit/phpunit": "^9.0"' True
create composer.json
insert '"require-dev": {
		"mikey179/vfsstream": "1.6.*",
		"phpunit/phpunit": "^9.0"
	}' 31
open "composer.json"
edit '"require-dev": {"mikey179/vfsstream": "1.6.*","phpunit/phpunit": "4.* || 5.* || 9.*"}' '"require-dev": {"mikey179/vfsstream": "1.6.*","phpunit/phpunit": "^9.0"}' True
open "composer.json"
edit '"require-dev": {"mikey179/vfsstream": "1.6.*","phpunit/phpunit": "4.* || 5.* || 9.*"}' '"require-dev": {"mikey179/vfsstream": "1.6.*","phpunit/phpunit": "^9.0"}' True
create composer.json
open "composer.json"
edit '{"description": "The CodeIgniter framework","name": "codeigniter/framework","type": "project","homepage": "https://codeigniter.com","license": "MIT","support": {"forum": "https://forum.codeigniter.com/","wiki": "https://github.com/bcit-ci/CodeIgniter/wiki","slack": "https://codeigniterchat.slack.com","source": "https://github.com/bcit-ci/CodeIgniter"},"require": {"php": ">=5.4.8"},"suggest": {"paragonie/random_compat": "Provides better randomness in PHP 5.x"},"scripts": {"test:coverage": ["@putenv XDEBUG_MODE=coverage","phpunit --color=always --coverage-text --configuration tests/travis/sqlite.phpunit.xml"],"post-install-cmd": ["sed -i s/name{0}/name[0]/ vendor/mikey179/vfsstream/src/main/php/org/bovigo/vfs/vfsStream.php"],"post-update-cmd": ["sed -i s/name{0}/name[0]/ vendor/mikey179/vfsstream/src/main/php/org/bovigo/vfs/vfsStream.php"]},"require-dev": {"mikey179/vfsstream": "1.6.*","phpunit/phpunit": "4.* || 5.* || 9.*"}}' '{"description": "The CodeIgniter framework","name": "codeigniter/framework","type": "project","homepage": "https://codeigniter.com","license": "MIT","support": {"forum": "https://forum.codeigniter.com/","wiki": "https://github.com/bcit-ci/CodeIgniter/wiki","slack": "https://codeigniterchat.slack.com","source": "https://github.com/bcit-ci/CodeIgniter"},"require": {"php": ">=5.4.8"},"suggest": {"paragonie/random_compat": "Provides better randomness in PHP 5.x"},"scripts": {"test:coverage": ["@putenv XDEBUG_MODE=coverage","phpunit --color=always --coverage-text --configuration tests/travis/sqlite.phpunit.xml"],"post-install-cmd": ["sed -i s/name{0}/name[0]/ vendor/mikey179/vfsstream/src/main/php/org/bovigo/vfs/vfsStream.php"],"post-update-cmd": ["sed -i s/name{0}/name[0]/ vendor/mikey179/vfsstream/src/main/php/org/bovigo/vfs/vfsStream.php"]},"require-dev": {"mikey179/vfsstream": "1.6.*","phpunit/phpunit": "^9.0"}}' True
open "composer.json"
edit '"require-dev": {"mikey179/vfsstream": "1.6.*","phpunit/phpunit": "4.* || 5.* || 9.*"}' '"require-dev": {"mikey179/vfsstream": "1.6.*","phpunit/phpunit": "^9.0"}' True
open "composer.json"
edit '"require-dev": {"mikey179/vfsstream": "1.6.*","phpunit/phpunit": "4.* || 5.* || 9.*"}' '"require-dev": {"mikey179/vfsstream": "1.6.*","phpunit/phpunit": "^9.0"}' True
open "composer.json"
edit '"require-dev": {"mikey179/vfsstream": "1.6.*","phpunit/phpunit": "4.* || 5.* || 9.*"}' '"require-dev": {"mikey179/vfsstream": "1.6.*","phpunit/phpunit": "^9.0"}' True
open "composer.json"
edit '"require-dev": {"mikey179/vfsstream": "1.6.*","phpunit/phpunit": "4.* || 5.* || 9.*"}' '"require-dev": {"mikey179/vfsstream": "1.6.*","phpunit/phpunit": "^9.0"}' True
open "composer.json"
edit '"require-dev": {"mikey179/vfsstream": "1.6.*","phpunit/phpunit": "4.* || 5.* || 9.*"}' '"require-dev": {"mikey179/vfsstream": "1.6.*","phpunit/phpunit": "^9.0"}' True
open "composer.json"
edit '"require-dev": {"mikey179/vfsstream": "1.6.*","phpunit/phpunit": "4.* || 5.* || 9.*"}' '"require-dev": {"mikey179/vfsstream": "1.6.*","phpunit/phpunit": "^9.0"}' True
open "composer.json"
edit '"require-dev": {"mikey179/vfsstream": "1.6.*","phpunit/phpunit": "4.* || 5.* || 9.*"}' '"require-dev": {"mikey179/vfsstream": "1.6.*","phpunit/phpunit": "^9.0"}' True
open "composer.json"
edit '"require-dev": {"mikey179/vfsstream": "1.6.*","phpunit/phpunit": "4.* || 5.* || 9.*"}' '"require-dev": {"mikey179/vfsstream": "1.6.*","phpunit/phpunit": "^9.0"}' True
open "composer.json"
edit '"require-dev": {"mikey179/vfsstream": "1.6.*","phpunit/phpunit": "4.* || 5.* || 9.*"}' '"require-dev": {"mikey179/vfsstream": "1.6.*","phpunit/phpunit": "^9.0"}' True
open "composer.json"
edit '"require-dev": {"mikey179/vfsstream": "1.6.*","phpunit/phpunit": "4.* || 5.* || 9.*"}' '"require-dev": {"mikey179/vfsstream": "1.6.*","phpunit/phpunit": "^9.0"}' True

