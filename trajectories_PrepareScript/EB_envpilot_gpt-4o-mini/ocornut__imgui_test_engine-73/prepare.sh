
find_file '*.yml'
open "/testbed/.github/workflows/tests.yml"
goto 90
goto 123
apt-get update
apt-get install -y libglfw3-dev libsdl2-dev
make -C imgui_test_suite/ clean
apt-get install -y build-essential
make -C imgui_test_suite/ clean
make -C imgui_test_suite/
find_file imgui.h
find_file imgui
find_file Makefile
open "/testbed/imgui_test_suite/Makefile"
goto 18
make -C imgui_test_suite/
find_file imgui
open "/testbed/.github/workflows/tests.yml"
goto 90
git submodule update --init --recursive
ls imgui_test_suite/thirdparty
ls imgui_test_suite/thirdparty/implot
create download_implot.sh
insert '#!/bin/bash

# Clone the implot repository into the correct directory
mkdir -p imgui_test_suite/thirdparty/implot
cd imgui_test_suite/thirdparty/implot

# Clone the implot repository
if ! git clone https://github.com/epezent/implot.git .; then
    echo "Failed to clone implot repository. Please check your network connection."
    exit 1
}

# Return to the original directory
cd ../../..' 0
bash download_implot.sh
edit '}' fi True
bash download_implot.sh
mkdir -p imgui_test_suite/thirdparty/implot

mkdir -p imgui_test_suite/thirdparty/implot

mkdir -p imgui_test_suite/thirdparty/implot

mkdir -p imgui_test_suite/thirdparty/implot

mkdir -p imgui_test_suite/thirdparty/implot

mkdir -p imgui_test_suite/thirdparty/implot

mkdir -p imgui_test_suite/thirdparty/implot

mkdir -p imgui_test_suite/thirdparty/implot

mkdir -p imgui_test_suite/thirdparty/implot

mkdir -p imgui_test_suite/thirdparty/implot

mkdir -p imgui_test_suite/thirdparty/implot

