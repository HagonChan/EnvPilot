ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
apt-get update && apt-get install -y php php-xml php-mbstring php-curl php-zip
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install
vendor/bin/phpunit --coverage-clover clover.xml
vendor/bin/phpunit --coverage-clover clover.xml --verbose
open "tests/Mocks/SmallChunksStream.php"
edit 'public function close()
    {
    }' 'public function close(): void
    {
    }'
ls -la tests/Mocks/SmallChunksStream.php
chmod +w tests/Mocks/SmallChunksStream.php
edit 'public function close()
    {
    }' 'public function close(): void
    {
    }'
sed -i 's/public function close()/public function close(): void/g' tests/Mocks/SmallChunksStream.php
vendor/bin/phpunit --coverage-clover clover.xml
open "tests/Mocks/SlowPokeStream.php"
sed -i 's/public function close()/public function close(): void/g' tests/Mocks/SlowPokeStream.php
vendor/bin/phpunit --coverage-clover clover.xml
sed -i 's/public function __toString()/public function __toString(): string/g' tests/Mocks/SlowPokeStream.php
sed -i 's/public function detach()/public function detach(): ?resource/g' tests/Mocks/SlowPokeStream.php
sed -i 's/public function eof()/public function eof(): bool/g' tests/Mocks/SlowPokeStream.php
sed -i 's/public function getSize()/public function getSize(): ?int/g' tests/Mocks/SlowPokeStream.php
sed -i 's/public function isReadable()/public function isReadable(): bool/g' tests/Mocks/SlowPokeStream.php
sed -i 's/public function isSeekable()/public function isSeekable(): bool/g' tests/Mocks/SlowPokeStream.php
sed -i 's/public function isWritable()/public function isWritable(): bool/g' tests/Mocks/SlowPokeStream.php
sed -i 's/public function read($length)/public function read(int $length): string/g' tests/Mocks/SlowPokeStream.php
sed -i 's/public function rewind()/public function rewind(): void/g' tests/Mocks/SlowPokeStream.php
sed -i 's/public function seek($offset, $whence = SEEK_SET)/public function seek(int $offset, int $whence = SEEK_SET): void/g' tests/Mocks/SlowPokeStream.php
sed -i 's/public function tell()/public function tell(): int/g' tests/Mocks/SlowPokeStream.php
sed -i 's/public function write($string)/public function write(string $string): int/g' tests/Mocks/SlowPokeStream.php
sed -i 's/public function __toString()/public function __toString(): string/g' tests/Mocks/SmallChunksStream.php
sed -i 's/public function detach()/public function detach(): ?resource/g' tests/Mocks/SmallChunksStream.php
sed -i 's/public function eof()/public function eof(): bool/g' tests/Mocks/SmallChunksStream.php
sed -i 's/public function getSize()/public function getSize(): ?int/g' tests/Mocks/SmallChunksStream.php
sed -i 's/public function isReadable()/public function isReadable(): bool/g' tests/Mocks/SmallChunksStream.php
sed -i 's/public function isSeekable()/public function isSeekable(): bool/g' tests/Mocks/SmallChunksStream.php
sed -i 's/public function isWritable()/public function isWritable(): bool/g' tests/Mocks/SmallChunksStream.php
sed -i 's/public function read($length)/public function read(int $length): string/g' tests/Mocks/SmallChunksStream.php
sed -i 's/public function rewind()/public function rewind(): void/g' tests/Mocks/SmallChunksStream.php
sed -i 's/public function seek($offset, $whence = SEEK_SET)/public function seek(int $offset, int $whence = SEEK_SET): void/g' tests/Mocks/SmallChunksStream.php
sed -i 's/public function tell()/public function tell(): int/g' tests/Mocks/SmallChunksStream.php
sed -i 's/public function write($string)/public function write(string $string): int/g' tests/Mocks/SmallChunksStream.php
vendor/bin/phpunit --coverage-clover clover.xml
open "tests/Mocks/SmallChunksStream.php"
edit 'public function getContents()
    {
        throw new Exception('"'"'not implemented'"'"');
    }' 'public function getContents(): string
    {
        throw new Exception('"'"'not implemented'"'"');
    }'
sed -i 's/public function getContents()/public function getContents(): string/g' tests/Mocks/SmallChunksStream.php
grep -n "public function" tests/Mocks/SmallChunksStream.php tests/Mocks/SlowPokeStream.php | grep -v "return type"

