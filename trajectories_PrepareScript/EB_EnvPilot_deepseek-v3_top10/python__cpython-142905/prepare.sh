ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open "README.rst"
open "Tools/requirements-hypothesis.txt"
apt update && apt install -y git autoconf aclocal gcc ccache xvfb gcc-10 openssl aws-lc libssl-dev build-essential python3-dev libffi-dev libbz2-dev libreadline-dev libsqlite3-dev libncursesw5-dev xz-utils tk-dev libgdbm-dev libc6-dev liblzma-dev zlib1g-dev libgdbm-compat-dev
apt update && apt install -y git autoconf gcc ccache xvfb gcc-10 openssl libssl-dev build-essential python3-dev libffi-dev libbz2-dev libreadline-dev libsqlite3-dev libncursesw5-dev xz-utils tk-dev libgdbm-dev libc6-dev liblzma-dev zlib1g-dev libgdbm-compat-dev
pip install -r Tools/requirements-hypothesis.txt
apt install -y python3-pip
pip install -r Tools/requirements-hypothesis.txt
./configure
make
make test
