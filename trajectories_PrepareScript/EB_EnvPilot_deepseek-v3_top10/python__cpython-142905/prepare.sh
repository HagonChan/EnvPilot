ls
open "README.rst"
open "Tools/requirements-hypothesis.txt"
apt-get update && apt-get install -y build-essential python3-dev libssl-dev zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libreadline-dev libffi-dev libsqlite3-dev libbz2-dev liblzma-dev tk-dev uuid-dev
./configure

