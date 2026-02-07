ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
apt-get update && apt-get install -y php7.4 php7.4-xdebug
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
apt-get install -y curl php
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install
apt-get install -y php8.1-xml
composer install
apt-get install -y php8.1-mbstring
composer install
apt-get install -y zip unzip
composer install
vendor/bin/phpunit
vendor/bin/phpunit --verbose
ls -la tests
vendor/bin/phpunit tests/AppTest.php --verbose
open "tests/AppTest.php"
search_file StreamInterface tests/AppTest.php
goto 1552
edit '$streamProphecy->write(Argument::type('"'"'string'"'"'))->will(function ($args) {
            $body = $this->reveal()->__toString();
            $body .= $args[0];
            $this->__toString()->willReturn($body);
        });' '$streamProphecy->write(Argument::type('"'"'string'"'"'))->will(function ($args) {
            $body = $this->reveal()->__toString();
            $body .= $args[0];
            $this->__toString()->willReturn($body);
            return strlen($args[0]);
        });'
ls -la tests/AppTest.php
chmod 644 tests/AppTest.php
edit '$streamProphecy->write(Argument::type('"'"'string'"'"'))->will(function ($args) {
            $body = $this->reveal()->__toString();
            $body .= $args[0];
            $this->__toString()->willReturn($body);
        });' '$streamProphecy->write(Argument::type('"'"'string'"'"'))->will(function ($args) {
            $body = $this->reveal()->__toString();
            $body .= $args[0];
            $this->__toString()->willReturn($body);
            return strlen($args[0]);
        });'
sed -i 's/$streamProphecy->write(Argument::type('\''string'\''))->will(function ($args) {\n            $body = $this->reveal()->__toString();\n            $body .= $args[0];\n            $this->__toString()->willReturn($body);\n        });/$streamProphecy->write(Argument::type('\''string'\''))->will(function ($args) {\n            $body = $this->reveal()->__toString();\n            $body .= $args[0];\n            $this->__toString()->willReturn($body);\n            return strlen($args[0]);\n        });/g' tests/AppTest.php
search_file 'return strlen' tests/AppTest.php
open "tests/AppTest.php"
edit '$streamProphecy->write(Argument::type('"'"'string'"'"'))->will(function ($args) {
            $body = $this->reveal()->__toString();
            $body .= $args[0];
            $this->__toString()->willReturn($body);
        });' '$streamProphecy->write(Argument::type('"'"'string'"'"'))->will(function ($args) {
            $body = $this->reveal()->__toString();
            $body .= $args[0];
            $this->__toString()->willReturn($body);
            return strlen($args[0]);
        });'
sed -i 's/\$streamProphecy->write(Argument::type(\'"string\'"))->will(function (\$args) {/\$streamProphecy->write(Argument::type(\'"string\'"))->will(function (\$args) {\n            \$body = \$this->reveal()->__toString();\n            \$body .= \$args[0];\n            \$this->__toString()->willReturn(\$body);\n            return strlen(\$args[0]);\n        });/g' tests/AppTest.php
sed -n '1537,1541p' tests/AppTest.php > /tmp/fix.txt
sed -i 's/\$this->__toString()->willReturn(\$body);/\$this->__toString()->willReturn(\$body);\n            return strlen(\$args[0]);/g' /tmp/fix.txt
sed -i '1537,1541 { r /tmp/fix.txt
 d; }' tests/AppTest.php
search_file 'return strlen' tests/AppTest.php
vendor/bin/phpunit tests/AppTest.php --verbose
search_file rewind tests/AppTest.php
edit '$streamProphecy->rewind()->willReturn(true);' '$streamProphecy->rewind();'
sed -i 's/\$streamProphecy->rewind()->willReturn(true);/\$streamProphecy->rewind();/g' tests/AppTest.php
vendor/bin/phpunit tests/AppTest.php --verbose
search_file write tests/AppTest.php
sed -i 's/\$streamProphecy->write(Argument::type('\''string'\''))->will(function (\$args) {\n            \$body = \$this->reveal()->__toString();\n            \$body .= \$args[0];\n            \$this->__toString()->willReturn(\$body);\n        });/\$streamProphecy->write(Argument::type('\''string'\''))->will(function (\$args) {\n            \$body = \$this->reveal()->__toString();\n            \$body .= \$args[0];\n            \$this->__toString()->willReturn(\$body);\n            return strlen(\$args[0]);\n        });/g' tests/AppTest.php
vendor/bin/phpunit tests/AppTest.php --verbose
goto 1768
edit '$streamProphecy->write(Argument::type('"'"'string'"'"'))->will(function ($args) {
            $body = $this->reveal()->__toString();
            $body .= $args[0];
            $this->__toString()->willReturn($body);
        });' '$streamProphecy->write(Argument::type('"'"'string'"'"'))->will(function ($args) {
            $body = $this->reveal()->__toString();
            $body .= $args[0];
            $this->__toString()->willReturn($body);
            return strlen($args[0]);
        });'
sed -i '1781,1785 { s/\$streamProphecy->write(Argument::type('\''string'\''))->will(function (\$args) {\n            \$body = \$this->reveal()->__toString();\n            \$body .= \$args[0];\n            \$this->__toString()->willReturn(\$body);\n        });/\$streamProphecy->write(Argument::type('\''string'\''))->will(function (\$args) {\n            \$body = \$this->reveal()->__toString();\n            \$body .= \$args[0];\n            \$this->__toString()->willReturn(\$body);\n            return strlen(\$args[0]);\n        });/g; }' tests/AppTest.php
vendor/bin/phpunit tests/AppTest.php --verbose
sed -i 's/\$streamProphecy->write(Argument::type('\''string'\''))->will(function (\$args) {\n            \$body = \$this->reveal()->__toString();\n            \$body .= \$args[0];\n            \$this->__toString()->willReturn(\$body);\n        });/\$streamProphecy->write(Argument::type('\''string'\''))->will(function (\$args) {\n            \$body = \$this->reveal()->__toString();\n            \$body .= \$args[0];\n            \$this->__toString()->willReturn(\$body);\n            return strlen(\$args[0]);\n        });/g' tests/AppTest.php
vendor/bin/phpunit tests/AppTest.php --verbose
goto 1277

