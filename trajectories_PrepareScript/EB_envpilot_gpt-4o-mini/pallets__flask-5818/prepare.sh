
ls -la
find_file '*.yml' .github/workflows
open "pyproject.toml"
apt-get update && apt-get install -y python3-dev build-essential
echo 'uv run --locked tox run -e $TOX_ENV' > test_commands.sh && chmod +x test_commands.sh
./test_commands.sh
pip install uv
apt-get install -y python3-pip
pip install uv
./test_commands.sh
open "pyproject.toml"
find_file tox.ini
find_file 'README*'
open "README.md"
export TOX_ENV=py310 && ./test_commands.sh
