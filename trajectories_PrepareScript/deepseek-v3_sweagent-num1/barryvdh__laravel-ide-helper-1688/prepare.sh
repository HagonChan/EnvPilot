ls -la
ls -la .github/workflows/
open ".github/workflows/run-tests.yml"
open "composer.json"
composer install --prefer-dist --no-progress
curl -sS https://getcomposer.org/installer | php
ls -la
which php || echo "PHP not found"
open "README.md"
