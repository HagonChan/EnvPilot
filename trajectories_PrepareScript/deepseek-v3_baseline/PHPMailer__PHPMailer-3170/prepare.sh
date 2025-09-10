ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "composer.json"
composer install
apt-get update
apt-get install -y composer
composer install
composer install --prefer-dist
curl -v https://repo.packagist.org
apt-get install -y curl
curl -v https://repo.packagist.org
unset https_proxy && unset http_proxy && composer install --prefer-dist
apt-get install -y php-xml
composer install --prefer-dist
composer test
cp testbootstrap-dist.php testbootstrap.php
ls -la test/
cp test/testbootstrap-dist.php testbootstrap.php
open "testbootstrap.php"
apt-get install -y php-imap
composer test
apt-get install -y php-mbstring php-intl
open "test/SendTestCase.php"
open "testbootstrap.php"
edit '$_REQUEST['"'"'mail_port'"'"'] = 2500;' '$_REQUEST['"'"'mail_port'"'"'] = 2500;
$_REQUEST['"'"'mail_useauth'"'"'] = 1;
$_REQUEST['"'"'mail_username'"'"'] = '"'"'testuser'"'"';
$_REQUEST['"'"'mail_userpass'"'"'] = '"'"'testpass'"'"';
$_REQUEST['"'"'mail_bcc'"'"'] = '"'"'bcc@example.com'"'"';'
ls -la testbootstrap.php
chmod 644 testbootstrap.php
edit '$_REQUEST['"'"'mail_port'"'"'] = 2500;' '$_REQUEST['"'"'mail_port'"'"'] = 2500;
$_REQUEST['"'"'mail_useauth'"'"'] = 1;
$_REQUEST['"'"'mail_username'"'"'] = '"'"'testuser'"'"';
$_REQUEST['"'"'mail_userpass'"'"'] = '"'"'testpass'"'"';
$_REQUEST['"'"'mail_bcc'"'"'] = '"'"'bcc@example.com'"'"';'

edit '$_REQUEST['"'"'mail_port'"'"'] = 2500;' '$_REQUEST['"'"'mail_port'"'"'] = 2500;\n$_REQUEST['"'"'mail_useauth'"'"'] = 1;\n$_REQUEST['"'"'mail_username'"'"'] = '"'"'testuser'"'"';\n$_REQUEST['"'"'mail_userpass'"'"'] = '"'"'testpass'"'"';\n$_REQUEST['"'"'mail_bcc'"'"'] = '"'"'bcc@example.com'"'"';'

edit '$_REQUEST['"'"'mail_port'"'"'] = 2500;' '$_REQUEST['"'"'mail_port'"'"'] = 2500;\n$_REQUEST['"'"'mail_useauth'"'"'] = 1;\n$_REQUEST['"'"'mail_username'"'"'] = '"'"'testuser'"'"';\n$_REQUEST['"'"'mail_userpass'"'"'] = '"'"'testpass'"'"';\n$_REQUEST['"'"'mail_bcc'"'"'] = '"'"'bcc@example.com'"'"';'
echo "\n\$_REQUEST['mail_useauth'] = 1;\n\$_REQUEST['mail_username'] = 'testuser';\n\$_REQUEST['mail_userpass'] = 'testpass';\n\$_REQUEST['mail_bcc'] = 'bcc@example.com';" >> testbootstrap.php
composer test
open "testbootstrap.php"
echo "\n\$_REQUEST['dkim_selector'] = 'phpmailer';\n\$_REQUEST['dkim_domain'] = 'example.com';\n\$_REQUEST['dkim_private'] = '-----BEGIN RSA PRIVATE KEY-----\nMIIEpAIBAAKCAQEA...\n-----END RSA PRIVATE KEY-----';\n\$_REQUEST['mail_smtpsecure'] = 'tls';\n\$_REQUEST['mail_wordwrap'] = 0;\n\$_REQUEST['mail_debug'] = 0;" >> testbootstrap.php
composer test
open "test/PHPMailer/DKIMTest.php"
open "testbootstrap.php"
edit '$_REQUEST['"'"'dkim_private'"'"'] = '"'"'-----BEGIN RSA PRIVATE KEY-----\nMIIEpAIBAAKCAQEA...\n-----END RSA PRIVATE KEY-----'"'"';' '$_REQUEST['"'"'dkim_private'"'"'] = '"'"'-----BEGIN RSA PRIVATE KEY-----\nMIIEowIBAAKCAQEA...\n-----END RSA PRIVATE KEY-----'"'"';'
sed -i "s|\$_REQUEST\['dkim_private'\] = '-----BEGIN RSA PRIVATE KEY-----\\nMIIEpAIBAAKCAQEA...\\n-----END RSA PRIVATE KEY-----';|\$_REQUEST\['dkim_private'\] = '-----BEGIN RSA PRIVATE KEY-----\\nMIIEowIBAAKCAQEA...\\n-----END RSA PRIVATE KEY-----';|" testbootstrap.php
composer test
open "test/PHPMailer/AuthCRAMMD5Test.php"
open "testbootstrap.php"
echo "<?php\n\n\$_REQUEST['submitted'] = 1;\n\$_REQUEST['mail_to'] = 'somebody@example.com';\n\$_REQUEST['mail_from'] = 'phpunit@example.com';\n\$_REQUEST['mail_cc'] = 'cc@example.com';\n\$_REQUEST['mail_host'] = 'localhost';\n\$_REQUEST['mail_port'] = 2500;\n\$_REQUEST['mail_useauth'] = 1;\n\$_REQUEST['mail_username'] = 'testuser';\n\$_REQUEST['mail_userpass'] = 'testpass';\n\$_REQUEST['mail_bcc'] = 'bcc@example.com';\n\$_REQUEST['dkim_selector'] = 'phpmailer';\n\$_REQUEST['dkim_domain'] = 'example.com';\n\$_REQUEST['dkim_private'] = '-----BEGIN RSA PRIVATE KEY-----\nMIIEpAIBAAKCAQEA...\n-----END RSA PRIVATE KEY-----';\n\$_REQUEST['mail_smtpsecure'] = 'tls';\n\$_REQUEST['mail_wordwrap'] = 0;\n\$_REQUEST['mail_debug'] = 0;\n" > testbootstrap.php
composer test
open "test/PHPMailer/DKIMTest.php"
open "testbootstrap.php"

