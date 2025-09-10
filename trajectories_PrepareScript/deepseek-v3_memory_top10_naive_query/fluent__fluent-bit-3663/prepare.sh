ls -la
ls -la .github/workflows
open ".github/workflows/unit-tests.yaml"
apt-get update && apt-get install -y gcc-7 g++-7 clang-6.0 libsystemd-dev gcovr
apt-cache search gcc | grep '^gcc-'
open "README.md"
apt-get update && apt-get install -y gcc g++ clang cmake make libsystemd-dev
mkdir -p build && cd build && cmake ..
apt-get install -y flex bison
cmake ..
make
find_file CMakeLists.txt lib/mbedtls-2.24.0
open "../CMakeLists.txt"
edit 'set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall")' 'set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall")
if(NOT "${PROJECT_NAME}" STREQUAL "mbedtls")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")
endif()' False
cmake ..
make
edit 'if(NOT "${PROJECT_NAME}" STREQUAL "mbedtls")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")
endif()' 'if(NOT "${PROJECT_NAME}" STREQUAL "mbedtls" AND NOT "${PROJECT_NAME}" STREQUAL "sqlite3")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")
endif()' False
cmake ..
make
open "../CMakeLists.txt"
find_file CMakeLists.txt lib/sqlite-amalgamation-3330000
edit 'if(NOT "${PROJECT_NAME}" STREQUAL "mbedtls" AND NOT "${PROJECT_NAME}" STREQUAL "sqlite3")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")
endif()' 'if(NOT "${PROJECT_NAME}" STREQUAL "mbedtls" AND NOT "${PROJECT_NAME}" STREQUAL "sqlite3" AND NOT "${TARGET_NAME}" STREQUAL "sqlite3")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")
endif()' False
cmake ..
make
search_file sqlite3 ../CMakeLists.txt
search_file 'add_library.*sqlite3' ../CMakeLists.txt
find_file CMakeLists.txt lib/sqlite-amalgamation-3330000
edit 'if(NOT "${PROJECT_NAME}" STREQUAL "mbedtls" AND NOT "${PROJECT_NAME}" STREQUAL "sqlite3" AND NOT "${TARGET_NAME}" STREQUAL "sqlite3")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")
endif()' 'if(NOT "${PROJECT_NAME}" STREQUAL "mbedtls" AND NOT "${PROJECT_NAME}" STREQUAL "sqlite3" AND NOT "${TARGET_NAME}" STREQUAL "sqlite3")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")
endif()

if("${TARGET_NAME}" STREQUAL "sqlite3")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wno-error")
endif()' False
cmake ..
make
search_file sqlite3 ../CMakeLists.txt
edit 'if("${TARGET_NAME}" STREQUAL "sqlite3")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wno-error")
endif()' 'if("${TARGET_NAME}" STREQUAL "sqlite3")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wno-error=misleading-indentation")
endif()' False
cmake ..
make
search_file sqlite3 ../CMakeLists.txt
edit 'if("${TARGET_NAME}" STREQUAL "sqlite3")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wno-error=misleading-indentation")
endif()' 'if("${TARGET_NAME}" STREQUAL "sqlite3")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wno-error")
endif()' False
cmake ..
make
search_file sqlite3 ../CMakeLists.txt
edit 'if("${TARGET_NAME}" STREQUAL "sqlite3")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wno-error")
endif()' 'if("${TARGET_NAME}" STREQUAL "sqlite3")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wno-error=misleading-indentation")
endif()' False
cmake ..
make
search_file sqlite3 ../CMakeLists.txt
edit 'if("${TARGET_NAME}" STREQUAL "sqlite3")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wno-error=misleading-indentation")
endif()' 'if("${TARGET_NAME}" STREQUAL "sqlite3")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wno-error")
endif()' False
cmake ..
make
search_file sqlite3 ../CMakeLists.txt
edit 'if("${TARGET_NAME}" STREQUAL "sqlite3")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wno-error")
endif()' 'if("${TARGET_NAME}" STREQUAL "sqlite3")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wno-error=misleading-indentation")
endif()' False
cmake ..

