

find_file '*.yml'
open "/testbed/.github/workflows/test.yml"
goto 100
insert '        sudo apt-get install \n          build-essential \n          cmake \n          python3-dev \n          python3-pip \n          ninja-build \n          libjpeg-dev \n          libpng-dev' 143
insert '        python3 -m pip install --upgrade pip\n        python3 -m pip install -r requirements.txt' 136
goto 330
insert '        if [ -d "${HALIDE_BUILD_DIR}" ]; then\n          cd ${HALIDE_BUILD_DIR} && make test\n        fi' 404
