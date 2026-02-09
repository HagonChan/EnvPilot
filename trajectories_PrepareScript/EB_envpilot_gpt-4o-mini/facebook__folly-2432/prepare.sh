
find . -name '*.yml' -o -name '*.yaml' -o -name 'gitlab-ci.yml' -o -name 'config.yml' -o -name 'azure-pipelines.yml' -o -name 'Jenkinsfile'
open ".github/workflows/getdeps_linux.yml"
apt-get update
python3 build/fbcode_builder/getdeps.py --allow-system-packages install-system-deps --recursive folly && python3 build/fbcode_builder/getdeps.py --allow-system-packages install-system-deps --recursive patchelf
apt-get install -y python3
python3 build/fbcode_builder/getdeps.py --allow-system-packages install-system-deps --recursive folly && python3 build/fbcode_builder/getdeps.py --allow-system-packages install-system-deps --recursive patchelf
open "build/fbcode_builder/getdeps.py"
goto 469
edit 'sudo \' '' True
search_file 'apt-get install -y'
scroll_up
edit '"sudo",' '# "sudo",' True
python3 build/fbcode_builder/getdeps.py --allow-system-packages install-system-deps --recursive folly && python3 build/fbcode_builder/getdeps.py --allow-system-packages install-system-deps --recursive patchelf
edit 'cmd_args = [# "sudo",' 'cmd_args = ["sudo",' True
python3 build/fbcode_builder/getdeps.py --allow-system-packages install-system-deps --recursive folly && python3 build/fbcode_builder/getdeps.py --allow-system-packages install-system-deps --recursive patchelf
open "build/fbcode_builder/getdeps.py"
edit '"--preserve-env=http_proxy",' '"http_proxy",' True
python3 build/fbcode_builder/getdeps.py --allow-system-packages install-system-deps --recursive folly && python3 build/fbcode_builder/getdeps.py --allow-system-packages install-system-deps --recursive patchelf
open "build/fbcode_builder/getdeps.py"
edit '"http_proxy",' '"http_proxy", "apt-get",' True
python3 build/fbcode_builder/getdeps.py --allow-system-packages install-system-deps --recursive folly && python3 build/fbcode_builder/getdeps.py --allow-system-packages install-system-deps --recursive patchelf
open "build/fbcode_builder/getdeps.py"
edit '"http_proxy", "apt-get",' '"apt-get",' True
python3 build/fbcode_builder/getdeps.py --allow-system-packages install-system-deps --recursive folly && python3 build/fbcode_builder/getdeps.py --allow-system-packages install-system-deps --recursive patchelf
open "build/fbcode_builder/getdeps.py"
edit '"apt-get",' '"apt-get",' True
edit '"apt-get",' '"apt-get", "install",' True
python3 build/fbcode_builder/getdeps.py --allow-system-packages install-system-deps --recursive folly && python3 build/fbcode_builder/getdeps.py --allow-system-packages install-system-deps --recursive patchelf
open "build/fbcode_builder/getdeps.py"
edit '"apt-get", "install",' '"apt-get",' True
python3 build/fbcode_builder/getdeps.py --allow-system-packages install-system-deps --recursive folly && python3 build/fbcode_builder/getdeps.py --allow-system-packages install-system-deps --recursive patchelf
open "build/fbcode_builder/getdeps.py"
edit '"apt-get",' '"apt-get", "install",' True
python3 build/fbcode_builder/getdeps.py --allow-system-packages install-system-deps --recursive folly && python3 build/fbcode_builder/getdeps.py --allow-system-packages install-system-deps --recursive patchelf
open "build/fbcode_builder/getdeps.py"
edit '"apt-get", "install",' '"apt-get",' True
python3 build/fbcode_builder/getdeps.py --allow-system-packages install-system-deps --recursive folly && python3 build/fbcode_builder/getdeps.py --allow-system-packages install-system-deps --recursive patchelf
open "build/fbcode_builder/getdeps.py"
edit '"apt-get",' '"apt-get", "install",' True
python3 build/fbcode_builder/getdeps.py --allow-system-packages install-system-deps --recursive folly && python3 build/fbcode_builder/getdeps.py --allow-system-packages install-system-deps --recursive patchelf
open "build/fbcode_builder/getdeps.py"
edit '"apt-get", "install",' '"apt-get",' True
python3 build/fbcode_builder/getdeps.py --allow-system-packages install-system-deps --recursive folly && python3 build/fbcode_builder/getdeps.py --allow-system-packages install-system-deps --recursive patchelf
open "build/fbcode_builder/getdeps.py"
edit '"apt-get",' '"apt-get", "install",' True
python3 build/fbcode_builder/getdeps.py --allow-system-packages install-system-deps --recursive folly && python3 build/fbcode_builder/getdeps.py --allow-system-packages install-system-deps --recursive patchelf
open "build/fbcode_builder/getdeps.py"
edit '"apt-get", "install",' '"apt-get",' True

