
find_file '*.yml'
find_file '*.yaml'
open "/testbed/.github/workflows/ci.yaml"
goto 60
goto 1
open "/testbed/.github/workflows/build.yaml"
goto 1
find_file requirements.txt
find_file setup.py
find_file pyproject.toml
find_file README.md
open "/testbed/README.md"
goto 27
goto 90
insert '# Install dependencies
apt update && apt install -y libgtk-4-dev libwebkitgtk-6.0-dev cmake ninja-build

# Build the project
mkdir build && cd build
cmake ..
cmake --build .

# Run tests
ctest' 0
apt update && apt install -y libgtk-4-dev libwebkitgtk-6.0-dev cmake ninja-build
mkdir build && cd build && cmake .. && cmake --build .
ctest
open "/testbed/build/Testing/Temporary/LastTest.log"
apt install -y xvfb
Xvfb :99 -screen 0 1920x1080x24 & DISPLAY=:99 ctest
open "/testbed/build/Testing/Temporary/LastTest.log"
search_dir bwrap
