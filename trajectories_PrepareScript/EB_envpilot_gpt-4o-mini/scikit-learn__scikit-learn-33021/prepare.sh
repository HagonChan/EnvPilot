
find_file '*.yml'
open ".github/workflows/unit-tests.yml"
scroll_down
find_file install.sh build_tools/azure
bash -l build_tools/azure/install.sh
python --version
apt update
apt install -y python3 python3-pip
bash -l build_tools/azure/install.sh
ln -s /usr/bin/python3 /usr/bin/python
bash -l build_tools/azure/install.sh
pip install mesonpy
find_file requirements.txt
open ".binder/requirements.txt"
pip install -r .binder/requirements.txt
pip install meson
bash -l build_tools/azure/install.sh
pip install mesonpy --force-reinstall
open "doc/binder/requirements.txt"
find_file setup.py
find_file pyproject.toml
open "pyproject.toml"
pip install meson-python
bash -l build_tools/azure/install.sh
apt install -y ninja-build
bash -l build_tools/azure/install.sh
pip install cython
bash -l build_tools/azure/install.sh
apt install -y python3.11 python3.11-distutils python3.11-venv
ln -s /usr/bin/python3.11 /usr/bin/python
python --version
rm /usr/bin/python && ln -s /usr/bin/python3.11 /usr/bin/python
bash -l build_tools/azure/install.sh
PYTHON=/usr/bin/python3.11 bash -l build_tools/azure/install.sh
/usr/bin/python3.11 build_tools/azure/install.sh
open "build_tools/azure/install.sh"
create install_temp.sh
insert '#!/bin/bash

set -e
set -x

# defines the get_dep and show_installed_libraries functions
source build_tools/shared.sh

UNAMESTR=`uname`
CCACHE_LINKS_DIR="/tmp/ccache"

setup_ccache() {
    CCACHE_BIN=`which ccache || echo ""
    if [[ "${CCACHE_BIN}" == "" ]]; then
        echo "ccache not found, skipping..."
    elif [[ -d "${CCACHE_LINKS_DIR}" ]]; then
        echo "ccache already configured, skipping..."
    else
        echo "Setting up ccache with CCACHE_DIR=${CCACHE_DIR}"
        mkdir ${CCACHE_LINKS_DIR}
        which ccache
        for name in gcc g++ cc c++ clang clang++ i686-linux-gnu-gcc i686-linux-gnu-c++ x86_64-linux-gnu-gcc x86_64-linux-gnu-c++ \
                    x86_64-apple-darwin13.4.0-clang x86_64-apple-darwin13.4.0-clang++ \
                    arm64-apple-darwin20.0.0-clang arm64-apple-darwin20.0.0-clang++; do
        ln -s ${CCACHE_BIN} "${CCACHE_LINKS_DIR}/${name}"
        done
        export PATH="${CCACHE_LINKS_DIR}:${PATH}"
        ccache -M 512M

        # Zeroing statistics so that ccache statistics are shown only for this build
        ccache -z
    fi
}

# The rest of the script remains unchanged...
' 0
bash install_temp.sh
edit 'CCACHE_BIN=`which ccache || echo ""' 'CCACHE_BIN=$(which ccache || echo "")'
bash install_temp.sh
scroll_down
open "build_tools/azure/install.sh"
insert 'pre_python_environment_install() {
    if [[ "$DISTRIB" == "ubuntu" ]]; then
        sudo apt-get update
        sudo apt-get install python3-scipy python3-matplotlib \
             libatlas3-base libatlas-base-dev python3-venv ccache

    elif [[ "$DISTRIB" == "debian-32" ]]; then
        apt-get update
        apt-get install -y python3-dev python3-numpy python3-scipy \
                python3-matplotlib libopenblas-dev \
                python3-venv python3-pandas ccache git
    fi
}

check_packages_dev_version() {
    for package in $@; do
        package_version=$(python -c "import $package; print($package.__version__)" )
        if [[ $package_version =~ ^[.0-9]+$ ]]; then
            echo "$package is not a development version: $package_version"
            exit 1
        fi
    done
}

python_environment_install_and_activate() {
    if [[ "$DISTRIB" == "conda*" ]]; then
        create_conda_environment_from_lock_file $VIRTUALENV $LOCK_FILE
        activate_environment

    elif [[ "$DISTRIB" == "ubuntu" || "$DISTRIB" == "debian-32" ]]; then
        python3 -m venv --system-site-packages $VIRTUALENV
        activate_environment
        pip install -r "${LOCK_FILE}"
    fi
}

scikit_learn_install() {
    setup_ccache
    show_installed_libraries
    # Additional installation steps...
}
' 35
bash install_temp.sh
scroll_down
insert 'main() {
    pre_python_environment_install
    python_environment_install_and_activate
    scikit_learn_install
    setup_playwright_if_installed
}

main
' 35
bash install_temp.sh

