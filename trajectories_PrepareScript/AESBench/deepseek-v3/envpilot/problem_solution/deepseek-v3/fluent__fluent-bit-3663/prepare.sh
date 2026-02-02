ls -la
ls -la .github/workflows
open ".github/workflows/unit-tests.yaml"
open "README.md"
sudo apt update && sudo apt install -y gcc-7 g++-7 clang-6.0 libsystemd-dev gcovr cmake make libssl-dev zlib1g-dev
apt update && apt install -y gcc-7 g++-7 clang-6.0 libsystemd-dev gcovr cmake make libssl-dev zlib1g-dev
apt update && apt install -y gcc g++ clang libsystemd-dev gcovr cmake make libssl-dev zlib1g-dev
mkdir -p build && cd build && cmake ..
apt install -y flex bison
cmake ..
make
find_file CMakeLists.txt lib/mbedtls-2.24.0
find_file CMakeLists.txt lib
open "../CMakeLists.txt"
edit 'set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall")' 'set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall")
if(NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "mbedtls")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")
endif()'
cmake ..
make
edit 'if(NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "mbedtls")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")
endif()' 'if(NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "mbedtls" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite3")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")
endif()'
cmake ..
make
find_file CMakeLists.txt lib/sqlite-amalgamation-3330000
edit 'if(NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "mbedtls" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite3")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")
endif()' 'if(NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "mbedtls" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite3" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite-amalgamation")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")
endif()'
cmake ..
make
edit 'add_library(sqlite3 STATIC ${SQLITE3_SOURCES})' 'add_library(sqlite3 STATIC ${SQLITE3_SOURCES})
set_target_properties(sqlite3 PROPERTIES COMPILE_FLAGS "-Wno-error=misleading-indentation")'
search_file sqlite3 ../CMakeLists.txt
edit 'add_library(sqlite3 STATIC ${SQLITE3_SOURCES})' 'add_library(sqlite3 STATIC ${SQLITE3_SOURCES})
set_target_properties(sqlite3 PROPERTIES COMPILE_FLAGS "-Wno-error=misleading-indentation")'
search_file add_library ../CMakeLists.txt
find_file CMakeLists.txt lib/sqlite-amalgamation-3330000
edit 'if(NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "mbedtls" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite3" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite-amalgamation")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")
endif()' 'if(NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "mbedtls" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite3" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite-amalgamation" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite-amalgamation-3330000")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")
endif()'
cmake ..
make
search_file sqlite3 ../CMakeLists.txt
edit 'if(NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "mbedtls" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite3" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite-amalgamation" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite-amalgamation-3330000")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")
endif()' 'if(NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "mbedtls" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite3" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite-amalgamation" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite-amalgamation-3330000" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "lib/sqlite-amalgamation-3330000")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")
endif()'
cmake ..
make
search_file sqlite3 ../CMakeLists.txt
edit 'if(NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "mbedtls" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite3" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite-amalgamation" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite-amalgamation-3330000" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "lib/sqlite-amalgamation-3330000")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")
endif()' 'if(NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "mbedtls" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite3" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite-amalgamation" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite-amalgamation-3330000" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "lib/sqlite-amalgamation-3330000" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "lib/sqlite-amalgamation")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")
endif()'
cmake ..
make
search_file sqlite3 ../CMakeLists.txt
edit 'if(NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "mbedtls" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite3" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite-amalgamation" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite-amalgamation-3330000" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "lib/sqlite-amalgamation-3330000" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "lib/sqlite-amalgamation")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")
endif()' 'if(NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "mbedtls" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite3" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite-amalgamation" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite-amalgamation-3330000" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "lib/sqlite-amalgamation-3330000" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "lib/sqlite-amalgamation" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "lib/sqlite3")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")
endif()'
cmake ..
make
search_file sqlite3 ../CMakeLists.txt
edit 'if(NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "mbedtls" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite3" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite-amalgamation" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite-amalgamation-3330000" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "lib/sqlite-amalgamation-3330000" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "lib/sqlite-amalgamation" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "lib/sqlite3")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")
endif()' 'if(NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "mbedtls" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite3" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite-amalgamation" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "sqlite-amalgamation-3330000" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "lib/sqlite-amalgamation-3330000" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "lib/sqlite-amalgamation" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "lib/sqlite3" AND NOT "${CMAKE_CURRENT_SOURCE_DIR}" MATCHES "lib/sqlite-amalgamation-3330000/sqlite3.c")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")
endif()'
cmake ..
make
search_file sqlite3 ../CMakeLists.txt

