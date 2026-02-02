find_file '.github/workflows/*.yml'
find_file .gitlab-ci.yml
find_file .circleci/config.yml
find_file Jenkinsfile
find_file requirements.txt
find_file setup.py
find_file pyproject.toml
find_file Makefile
open "/testbed/Makefile"
apt-get update && apt-get install -y doxygen libjpeg-dev libpng-dev ninja-build coreutils jpeg libpng gcc-7 g++-7 gcc-multilib g++-multilib libjpeg-dev:i386 libpng-dev:i386 gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-aarch64-linux-gnu qemu-user qemu-user-binfmt llvm clang python3 git curl tar build-essential
apt-get update && apt-get install -y doxygen libjpeg-dev libpng-dev ninja-build coreutils gcc-multilib g++-multilib gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-aarch64-linux-gnu qemu-user qemu-user-binfmt llvm clang python3 git curl tar build-essential
apt-get install -y gcc-11-aarch64-linux-gnu g++-11-aarch64-linux-gnu gcc-11-arm-linux-gnueabihf g++-11-arm-linux-gnueabihf
apt-get install -y doxygen libjpeg-dev libpng-dev ninja-build coreutils qemu-user qemu-user-binfmt llvm clang python3 git curl tar build-essential
pip install -r python_bindings/requirements.txt
apt-get install -y python3-pip
pip install -r python_bindings/requirements.txt
make
search_file LLVM_VERSION /testbed/Makefile
apt-get install -y llvm-13 clang-13
make
search_file LLVM_VERSION /testbed/Makefile
open "/testbed/src/CodeGen_LLVM.cpp"
search_file ModuleAddressSanitizerPass /testbed/src/CodeGen_LLVM.cpp
goto 1180
edit 'mpm.addPass(ModuleAddressSanitizerPass(
                    compile_kernel, recover, module_use_after_scope,
                    use_odr_indicator));' 'mpm.addPass(ModuleAddressSanitizerPass(
                    AddressSanitizerOptions(compile_kernel, recover, module_use_after_scope),
                    use_odr_indicator));' True
make
edit 'mpm.addPass(ModuleAddressSanitizerPass(
                    AddressSanitizerOptions(compile_kernel, recover, module_use_after_scope),
                    use_odr_indicator));' 'AddressSanitizerOptions asan_opts;
                asan_opts.CompileKernel = compile_kernel;
                asan_opts.Recover = recover;
                asan_opts.UseAfterScope = module_use_after_scope;
                mpm.addPass(ModuleAddressSanitizerPass(asan_opts, use_odr_indicator));' True
make
edit 'mpm.addPass(createModuleToFunctionPassAdaptor(AddressSanitizerPass(
                    AddressSanitizerOptions(compile_kernel, recover, use_after_scope, use_after_return))));' 'AddressSanitizerOptions asan_opts;
                asan_opts.CompileKernel = compile_kernel;
                asan_opts.Recover = recover;
                asan_opts.UseAfterScope = use_after_scope;
                asan_opts.UseAfterReturn = use_after_return;
                mpm.addPass(createModuleToFunctionPassAdaptor(AddressSanitizerPass(asan_opts)));' True
make
search_file LLVM_VERSION /testbed/Makefile
apt-get install -y llvm-13 clang-13
search_file LLVM_CONFIG /testbed/Makefile
export LLVM_CONFIG=llvm-config-13 && make
make clean
export LLVM_CONFIG=llvm-config-13 && make
goto 1180
edit 'AddressSanitizerOptions asan_opts;
                asan_opts.CompileKernel = compile_kernel;
                asan_opts.Recover = recover;
                asan_opts.UseAfterScope = module_use_after_scope;
                mpm.addPass(ModuleAddressSanitizerPass(asan_opts, use_odr_indicator));' 'mpm.addPass(ModuleAddressSanitizerPass(
                    compile_kernel, recover, module_use_after_scope,
                    use_odr_indicator));' True
export LLVM_CONFIG=llvm-config-13 && make
