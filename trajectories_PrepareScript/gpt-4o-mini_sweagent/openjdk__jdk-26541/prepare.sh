ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
goto 200
open ".github/workflows/build-linux.yml"
sudo apt-get update && sudo apt-get install gcc-10 g++-10 libxrandr-dev libxtst-dev libcups2-dev libasound2-dev
apt-get update && apt-get install gcc-10 g++-10 libxrandr-dev libxtst-dev libcups2-dev libasound2-dev
apt-get update
apt-get install gcc-10 g++-10 libxrandr-dev libxtst-dev libcups2-dev libasound2-dev
dpkg -l | grep -E 'gcc-10|g\+\+-10|libxrandr-dev|libxtst-dev|libcups2-dev|libasound2-dev'
apt-get install gcc-10

