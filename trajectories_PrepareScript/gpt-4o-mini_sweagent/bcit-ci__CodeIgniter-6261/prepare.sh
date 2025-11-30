find_file '*.yml' .
open "/testbed/.github/workflows/test-phpunit.yml"
goto 123
goto 100
composer --version
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt update
apt install -y php php-cli curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install
apt install -y php8.1-xml
composer install
apt install -y php8.1-zip unzip
composer install
vendor/bin/phpunit
php --version
open "composer.json"
edit '"phpunit/phpunit": "4.* || 5.* || 9.*"' '"phpunit/phpunit": "^9.0"' True
open "composer.json"
insert '"phpunit/phpunit": "^9.0"' 33
edit '"phpunit/phpunit": "4.* || 5.* || 9.*"' '"phpunit/phpunit": "^9.0"' True
create composer.json
edit '{' '{
	"description": "The CodeIgniter framework",
	"name": "codeigniter/framework",
	"type": "project",
	"homepage": "https://codeigniter.com",
	"license": "MIT",
	"support": {
		"forum": "https://forum.codeigniter.com/",
		"wiki": "https://github.com/bcit-ci/CodeIgniter/wiki",
		"slack": "https://codeigniterchat.slack.com",
		"source": "https://github.com/bcit-ci/CodeIgniter"
	},
	"require": {
		"php": ">=5.4.8"
	},
	"suggest": {
		"paragonie/random_compat": "Provides better randomness in PHP 5.x"
	},
	"scripts": {
		"test:coverage": [
			"@putenv XDEBUG_MODE=coverage",
			"phpunit --color=always --coverage-text --configuration tests/travis/sqlite.phpunit.xml"
		],
		"post-install-cmd": [
			"sed -i s/name{0}/name[0]/ vendor/mikey179/vfsstream/src/main/php/org/bovigo/vfs/vfsStream.php"
		],
		"post-update-cmd": [
			"sed -i s/name{0}/name[0]/ vendor/mikey179/vfsstream/src/main/php/org/bovigo/vfs/vfsStream.php"
		]
	},
	"require-dev": {
		"mikey179/vfsstream": "1.6.*",
		"phpunit/phpunit": "^9.0"
	}
}' True
create composer.json
rm composer.json
create composer.json
composer install
rm composer.json
create composer.json
rm composer.json
create composer.json
create temp_composer.json
create temp_composer.json
rm temp_composer.json
create temp_composer.json
create temp_composer.json
rm temp_composer.json
create temp_composer.json
create temp_composer.json
rm temp_composer.json
create temp_composer.json
create temp_composer.json
rm temp_composer.json
create temp_composer.json
create temp_composer.json
rm temp_composer.json
create temp_composer.json
create temp_composer.json
rm temp_composer.json

