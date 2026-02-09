ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/tests.yml"
sudo apt-get update && sudo apt-get install -y libglfw3-dev libsdl2-dev gcc g++ make libc6-dev libstdc++6 libpthread-stubs0-dev libx11-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev libgl1-mesa-dev libasound2-dev
apt-get update && apt-get install -y libglfw3-dev libsdl2-dev gcc g++ make libc6-dev libstdc++6 libpthread-stubs0-dev libx11-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev libgl1-mesa-dev libasound2-dev
ls -la
ls -la build_scripts
ls -la | grep -E 'Makefile|CMakeLists.txt'
ls -la imgui_test_suite
open "imgui_test_suite/Makefile"
ls -la ../../imgui
ls -la
open ".gitmodules"
ls -la imgui_test_suite/thirdparty
ls -la | grep -i readme
ls -la docs
open "docs/README.md"
ls -la build_scripts
grep -r "imgui" .
git clone https://github.com/ocornut/imgui ../../imgui
git clone https://github.com/ocornut/imgui ../../imgui
cd imgui_test_suite && make
cd ../../imgui && git rev-parse HEAD
open "imgui_test_suite/imgui_test_suite_imconfig.h"
ls -la imgui_test_suite
cd /testbed && ls -la imgui_test_suite
open "imgui_test_suite/imgui_test_suite_imconfig.h"
open "imgui_test_suite/Makefile"
cd ../../imgui && git tag
cd ../../imgui && git checkout v1.85
cd /testbed/imgui_test_suite && make clean && make
cd ../../imgui && git checkout v1.89
cd /testbed/imgui_test_suite && make clean && make
cd ../../imgui && git checkout master
cd /testbed/imgui_test_suite && make clean && make
ls -la ../imgui_test_engine
open "../imgui_test_engine/imgui_te_imconfig.h"
cd ../imgui_test_engine && git log -n 5
ls -la | grep -i readme
cd /testbed && ls -la | grep -i readme
cat .gitmodules
cd ../../imgui && git checkout v1.80
cd /testbed/imgui_test_suite && make clean && make
cd ../../imgui && git checkout v1.82
cd /testbed/imgui_test_suite && make clean && make
open "../imgui_test_engine/imgui_te_engine.h"
cd ../../imgui && git checkout v1.83
cd /testbed/imgui_test_suite && make clean && make

