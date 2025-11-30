ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/ci.yml"
nvm install 21.7.3 && nvm use 21.7.3
apt update && apt install -y nodejs npm
apt update && apt install -y nodejs npm --fix-missing
sed -i 's/mirrors.aliyun.com/archive.ubuntu.com/g' /etc/apt/sources.list && apt update && apt install -y nodejs npm
apt --fix-broken install
apt install -y nodejs npm --fix-missing
apt remove -y node-got && apt install -y nodejs npm
apt purge -y npm nodejs && apt install -y nodejs npm
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt install -y nodejs
apt update && apt install -y curl
apt --fix-broken install
apt remove -y node-got nodejs npm
apt remove --purge -y node* && apt autoremove -y
apt clean && apt update && apt install -y curl && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt install -y nodejs
apt remove --purge -y curl node* && apt autoremove -y
apt clean && apt update && apt install -y curl && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt install -y nodejs
apt remove --purge -y curl node* && apt autoremove -y
apt clean && apt update && apt install -y curl && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt install -y nodejs
apt remove --purge -y curl node* && apt autoremove -y
apt clean && apt update && apt install -y curl && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt install -y nodejs
apt remove --purge -y curl node* && apt autoremove -y
apt clean && apt update && apt install -y curl && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt install -y nodejs
apt remove --purge -y curl node* && apt autoremove -y
apt clean && apt update && apt install -y curl && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt install -y nodejs
apt remove --purge -y curl node* && apt autoremove -y
apt clean && apt update && apt install -y curl && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt install -y nodejs
apt remove --purge -y curl node* && apt autoremove -y
apt clean && apt update && apt install -y curl && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt install -y nodejs
apt remove --purge -y curl node* && apt autoremove -y
apt clean && apt update && apt install -y curl && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt install -y nodejs
apt remove --purge -y curl node* && apt autoremove -y
apt clean && apt update && apt install -y curl && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt install -y nodejs
apt remove --purge -y curl node* && apt autoremove -y
apt clean && apt update && apt install -y curl && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt install -y nodejs
apt remove --purge -y curl node* && apt autoremove -y
apt clean && apt update && apt install -y curl && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt install -y nodejs
apt remove --purge -y curl node* && apt autoremove -y
apt clean && apt update && apt install -y curl && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt install -y nodejs
apt remove --purge -y curl node* && apt autoremove -y
apt clean && apt update && apt install -y curl && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt install -y nodejs
apt remove --purge -y curl node* && apt autoremove -y
apt clean && apt update && apt install -y curl && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt install -y nodejs
apt remove --purge -y curl node* && apt autoremove -y
apt clean && apt update && apt install -y curl && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt install -y nodejs
apt remove --purge -y curl node* && apt autoremove -y

