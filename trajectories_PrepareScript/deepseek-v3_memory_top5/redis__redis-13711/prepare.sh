ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y build-essential tcl8.6 tclx libc6-dev-i386 gcc-multilib g++-multilib
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
apt-get install -y libssl-dev libjemalloc-dev
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
open "src/zmalloc.h"
edit '#define zmalloc_size(p) je_malloc_usable_size(p)' '#define zmalloc_size(p) malloc_usable_size(p)' True
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
open "src/sds.c"
edit 'je_nallocx(newlen, 0)' 'nallocx(newlen, 0)' True
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
open "src/zmalloc.c"
search_file '#define malloc' src/zmalloc.c
edit '#define malloc(size) je_malloc(size)' '#define malloc(size) malloc(size)' True
edit '#define calloc(count,size) je_calloc(count,size)' '#define calloc(count,size) calloc(count,size)' True
edit '#define realloc(ptr,size) je_realloc(ptr,size)' '#define realloc(ptr,size) realloc(ptr,size)' True
edit '#define free(ptr) je_free(ptr)' '#define free(ptr) free(ptr)' True
edit '#define mallocx(size,flags) je_mallocx(size,flags)' '#define mallocx(size,flags) mallocx(size,flags)' True
edit '#define rallocx(ptr,size,flags) je_rallocx(ptr,size,flags)' '#define rallocx(ptr,size,flags) rallocx(ptr,size,flags)' True
edit '#define dallocx(ptr,flags) je_dallocx(ptr,flags)' '#define dallocx(ptr,flags) dallocx(ptr,flags)' True
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
edit je_mallctl mallctl True
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
open "src/object.c"
edit je_malloc_stats_print malloc_stats_print True
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
open "src/db.c"
edit je_mallctl mallctl True
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
open "src/debug.c"
edit je_mallctl mallctl True
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
open "src/eval.c"
edit je_mallctl mallctl True
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
open "src/lazyfree.c"
edit je_mallctl mallctl True
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
open "src/script.c"
edit je_mallctl mallctl True
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
open "src/function_lua.c"
edit je_mallctl mallctl True
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
ls -la deps
cd deps && make
open "deps/Makefile"

