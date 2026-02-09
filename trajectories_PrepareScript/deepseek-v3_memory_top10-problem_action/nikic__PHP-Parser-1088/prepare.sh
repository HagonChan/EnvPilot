find_file '.github/workflows/*.yml'
find_file .gitlab-ci.yml
find_file .circleci/config.yml
find_file composer.json
open "/testbed/composer.json"
find_file README.md
open "/testbed/README.md"
php --version
apt-get update && apt-get install -y php7.4
apt-get install -y php7.4
php --version
apt-get install -y composer
composer --version
composer install
apt-get install -y php8.1-xml
apt-get install -y php8.1-curl
composer install --ignore-platform-reqs
find_file tests
open "/testbed/composer.json"
find_file test/PhpParser
find_file test
open "/testbed/README.md"
find_file phpunit.xml
find_file vendor/nikic/php-parser/tests
create test_parser.php
insert '<?php
require '"'"'vendor/autoload.php'"'"';

use PhpParser\Error;
use PhpParser\NodeDumper;
use PhpParser\ParserFactory;

$code = <<<'"'"'CODE'"'"'
<?php

function test($foo)
{
    var_dump($foo);
}
CODE;

$parser = (new ParserFactory())->createForNewestSupportedVersion();
try {
    $ast = $parser->parse($code);
} catch (Error $error) {
    echo "Parse error: {$error->getMessage()}\n";
    return;
}

$dumper = new NodeDumper;
echo $dumper->dump($ast) . "\n";' 0
php test_parser.php
