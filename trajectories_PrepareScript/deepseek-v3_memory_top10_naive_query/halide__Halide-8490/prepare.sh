ls -la
ls -la .github/workflows
open ".github/workflows/presubmit.yml"
open ".github/workflows/pip.yml"
open "README.md"
search_file '#building-halide' README.md
goto 29
search_file 'Building Halide' README.md
goto 115
goto 213
apt-get update && apt-get install -y build-essential cmake ninja-build llvm clang lld clang-tools-extra compiler-rt libc++-dev libstdc++-dev
apt-get update && apt-get install -y build-essential cmake ninja-build llvm clang lld libstdc++-12-dev
cmake --version && clang --version && llvm-config --version
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null && echo 'deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ jammy main' | sudo tee /etc/apt/sources.list.d/kitware.list >/dev/null && sudo apt-get update && sudo apt-get install -y cmake
cmake -G Ninja -S . -B build -DCMAKE_BUILD_TYPE=Release
open "CMakeLists.txt"
wget https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.tar.gz && tar -xzf cmake-3.28.0-linux-x86_64.tar.gz && export PATH="$(pwd)/cmake-3.28.0-linux-x86_64/bin:$PATH"
curl -L https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.tar.gz -o cmake-3.28.0-linux-x86_64.tar.gz && tar -xzf cmake-3.28.0-linux-x86_64.tar.gz && export PATH="$(pwd)/cmake-3.28.0-linux-x86_64/bin:$PATH"
edit 'cmake_minimum_required(VERSION 3.28)' 'cmake_minimum_required(VERSION 3.22)' False
cmake -G Ninja -S . -B build -DCMAKE_BUILD_TYPE=Release
edit 'cmake_minimum_required(VERSION 3.22)' 'cmake_minimum_required(VERSION 3.28)' False
open "cmake/BundleStatic.cmake"
ls -la
open "Makefile"
make
make LLVM_OK=y
find /usr -name "llvm-config*" 2>/dev/null
open "src/LLVM_Headers.h"
edit '#if LLVM_VERSION >= 170' '#if LLVM_VERSION >= 140' False
edit '#error "Compiling Halide requires LLVM 17.0 or newer"' '#error "Compiling Halide requires LLVM 14.0 or newer"' False
make LLVM_OK=y
find /usr -name "Triple.h" 2>/dev/null
edit '#include <llvm/TargetParser/Triple.h>' '#include <llvm/ADT/Triple.h>' False
make LLVM_OK=y
open "src/CodeGen_LLVM.cpp"
search_file starts_with src/CodeGen_LLVM.cpp
edit 'function.getName().starts_with' 'function.getName().startswith' True
make LLVM_OK=y
search_file SanitizerCoveragePass src/CodeGen_LLVM.cpp
search_file AddressSanitizerPass src/CodeGen_LLVM.cpp
goto 1186
edit 'mpm.addPass(SanitizerCoveragePass(sanitizercoverage_options));' 'mpm.addPass(createModuleToFunctionPassAdaptor(SanitizerCoveragePass(sanitizercoverage_options)));' False
edit 'mpm.addPass(AddressSanitizerPass(
                    asan_options, use_global_gc, use_odr_indicator, destructor_kind));' 'mpm.addPass(AddressSanitizerPass(asan_options));' False
make LLVM_OK=y
edit 'SanitizerCoverageOptions sanitizercoverage_options;
                // Mirror what -fsanitize=fuzzer-no-link would enable.
                // See https://github.com/halide/Halide/issues/6528
                sanitizercoverage_options.CoverageType = SanitizerCoverageOptions::SCK_Edge;
                sanitizercoverage_options.IndirectCalls = true;
                sanitizercoverage_options.TraceCmp = true;
                sanitizercoverage_options.Inline8bitCounters = true;
                sanitizercoverage_options.PCTable = true;
                // Due to TLS differences, stack depth tracking is only enabled on Linux
                if (get_target().os == Target::OS::Linux) {
                    sanitizercoverage_options.StackDepth = true;
                }
                mpm.addPass(createModuleToFunctionPassAdaptor(SanitizerCoveragePass(sanitizercoverage_options)));' '' False
edit 'constexpr bool use_global_gc = false;
                constexpr bool use_odr_indicator = true;
                constexpr auto destructor_kind = AsanDtorKind::Global;' '' False
edit 'pb.registerPipelineStartEPCallback(
            [](ModulePassManager &mpm, OptimizationLevel) {
                AddressSanitizerOptions asan_options;  // default values are good...
                asan_options.UseAfterScope = true;     // ...except this one
                
                mpm.addPass(AddressSanitizerPass(asan_options));' 'pb.registerPipelineStartEPCallback(
            [](ModulePassManager &mpm, OptimizationLevel) {
                AddressSanitizerOptions asan_options;  // default values are good...
                asan_options.UseAfterScope = true;     // ...except this one
                
                mpm.addPass(createModuleToFunctionPassAdaptor(AddressSanitizerPass(asan_options)));' False
make LLVM_OK=y
open "src/JITModule.cpp"

