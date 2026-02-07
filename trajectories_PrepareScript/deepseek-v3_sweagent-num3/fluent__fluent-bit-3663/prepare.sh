ls -la
ls -la .github/workflows
open ".github/workflows/unit-tests.yaml"
open "ci/scripts/run-unit-tests.sh"
open "README.md"
cd build && cmake ..
sudo apt update && sudo apt install -y cmake gcc clang libsystemd-dev gcovr
apt update && apt install -y cmake gcc clang libsystemd-dev gcovr
cmake ..
apt install -y flex bison
cmake ..
make
find_file CMakeLists.txt lib/mbedtls-2.24.0
find ../lib/mbedtls-2.24.0 -name CMakeLists.txt
open "../lib/mbedtls-2.24.0/CMakeLists.txt"
edit 'option(MBEDTLS_FATAL_WARNINGS "Compiler warnings treated as errors" ON)' 'option(MBEDTLS_FATAL_WARNINGS "Compiler warnings treated as errors" OFF)' True
make
find ../lib/mbedtls-2.24.0 -name ssl_tls.c
open "../lib/mbedtls-2.24.0/library/ssl_tls.c"
goto 1805
edit 'void ssl_calc_verify_tls_sha384( const mbedtls_ssl_context *ssl,
                                 unsigned char hash[48],
                                 size_t *hlen )' '#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Warray-parameter"
void ssl_calc_verify_tls_sha384( const mbedtls_ssl_context *ssl,
                                 unsigned char hash[48],
                                 size_t *hlen )
#pragma GCC diagnostic pop' False
edit '    mbedtls_sha512_clone( &sha512, &ssl->handshake->fin_sha512 );
    mbedtls_sha512_finish_ret( &sha512, hash );' '    mbedtls_sha512_clone( &sha512, &ssl->handshake->fin_sha512 );
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wstringop-overflow"
    mbedtls_sha512_finish_ret( &sha512, hash );
#pragma GCC diagnostic pop' False
make
find ../lib/mbedtls-2.24.0 -name CMakeLists.txt
open "../lib/mbedtls-2.24.0/library/CMakeLists.txt"
edit 'set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wmissing-declarations -Wmissing-prototypes")' 'set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wmissing-declarations -Wmissing-prototypes -Wno-error")' False
make
grep -r "-Werror" ../lib/mbedtls-2.24.0
grep -r "\-Werror" ../lib/mbedtls-2.24.0
open "../lib/mbedtls-2.24.0/CMakeLists.txt"
edit 'set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Wextra -Wwrite-strings")' 'set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Wextra -Wwrite-strings -Wno-error")' False
edit 'option(MBEDTLS_FATAL_WARNINGS "Compiler warnings treated as errors" ON)' 'option(MBEDTLS_FATAL_WARNINGS "Compiler warnings treated as errors" OFF)' False
edit 'set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")' 'set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wno-error")' False
make
find ../lib/mbedtls-2.24.0 -name config.h
open "../lib/mbedtls-2.24.0/include/mbedtls/config.h"
search_file MBEDTLS_FATAL_WARNINGS ../lib/mbedtls-2.24.0/include/mbedtls/config.h
search_file -Werror ../lib/mbedtls-2.24.0/CMakeLists.txt
open "../CMakeLists.txt"
open "../cmake/libraries.cmake"
open "../cmake/headers.cmake"
make VERBOSE=1
edit 'set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Wextra -Wwrite-strings")' 'set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Wextra -Wwrite-strings -Wno-error")' False
open "../CMakeLists.txt"
edit 'set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall")' 'set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Wno-error")' False
make
find ../lib/mbedtls-2.24.0 -name CMakeLists.txt
open "../lib/mbedtls-2.24.0/CMakeLists.txt"
env | grep -i Werror

