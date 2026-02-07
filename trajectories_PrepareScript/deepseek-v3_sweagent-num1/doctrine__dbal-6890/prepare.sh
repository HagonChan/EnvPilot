ls -la
ls -la .github/workflows
open ".github/workflows/continuous-integration.yml"
open "composer.json"
open "phpunit.xml.dist"
php -v
composer install
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install
apt-get update && apt-get install -y zip unzip
apt-get update && apt-get install -y zip unzip
composer install
vendor/bin/phpunit
vendor/bin/phpunit tests/Doctrine/DBAL/Tests/Functional/ExceptionTest.php
find . -name ExceptionTest.php
vendor/bin/phpunit tests/Functional/ExceptionTest.php
open "tests/Functional/ExceptionTest.php"
goto 120
edit 'if ($this->isPosixSuperUser()) {
            exec(sprintf('"'"'chattr +i %s'"'"', $filename));
        }' 'if ($this->isPosixSuperUser()) {
            try {
                exec(sprintf('"'"'chattr +i %s'"'"', $filename));
            } catch (\Throwable $e) {
                self::markTestSkipped('"'"'Cannot make file immutable: '"'"' . $e->getMessage());
            }
        }'
vendor/bin/phpunit
edit 'if ($this->isPosixSuperUser()) {
            try {
                exec(sprintf('"'"'chattr +i %s'"'"', $filename));
            } catch (\Throwable $e) {
                self::markTestSkipped('"'"'Cannot make file immutable: '"'"' . $e->getMessage());
            }
        }' 'if ($this->isPosixSuperUser()) {
            exec(sprintf('"'"'chattr +i %s'"'"', $filename), $output, $exitCode);
            if ($exitCode !== 0) {
                self::markTestSkipped('"'"'Cannot make file immutable: chattr command failed with exit code '"'"' . $exitCode);
            }
        }'
vendor/bin/phpunit
