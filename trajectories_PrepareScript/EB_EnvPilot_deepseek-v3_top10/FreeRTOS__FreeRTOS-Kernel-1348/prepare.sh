ls
open "README.md"
open "CMakeLists.txt"
find_file '.github/workflows/*.yml'
find_file .gitlab-ci.yml
find_file .circleci/config.yml
find_file tests
find_file test
apt-get update && apt-get install -y gcc g++ make git cmake uncrustify cspell
mkdir -p build && cd build
cmake ..
apt-get install -y cmake
cmake ..
g++ --version
apt-get install -y g++
g++ --version
cmake ..
open "CMakeLists.txt"
goto 22
edit 'cmake_minimum_required(VERSION 3.15)' 'cmake_minimum_required(VERSION 3.15)

add_library(freertos_config INTERFACE)
target_include_directories(freertos_config SYSTEM
  INTERFACE
    include) # The config file directory
target_compile_definitions(freertos_config
  PUBLIC
    projCOVERAGE_TEST=0)' True
cmake ..
edit 'target_compile_definitions(freertos_config
  PUBLIC
    projCOVERAGE_TEST=0)' 'target_compile_definitions(freertos_config
  INTERFACE
    projCOVERAGE_TEST=0)' True
cmake ..
make
mkdir -p ../include && cd ../include
create FreeRTOSConfig.h
insert '#ifndef FREERTOS_CONFIG_H
#define FREERTOS_CONFIG_H

#define configUSE_PREEMPTION                    1
#define configUSE_IDLE_HOOK                    0
#define configUSE_TICK_HOOK                    0
#define configCPU_CLOCK_HZ                     ( ( unsigned long ) 72000000 )
#define configTICK_RATE_HZ                     ( ( TickType_t ) 1000 )
#define configMAX_PRIORITIES                   ( 5 )
#define configMINIMAL_STACK_SIZE               ( ( unsigned short ) 128 )
#define configTOTAL_HEAP_SIZE                  ( ( size_t ) ( 17 * 1024 ) )
#define configMAX_TASK_NAME_LEN                ( 16 )
#define configUSE_TRACE_FACILITY               1
#define configUSE_16_BIT_TICKS                 0
#define configIDLE_SHOULD_YIELD                1
#define configUSE_MUTEXES                     1
#define configQUEUE_REGISTRY_SIZE              8
#define configCHECK_FOR_STACK_OVERFLOW         0
#define configUSE_RECURSIVE_MUTEXES            1
#define configUSE_MALLOC_FAILED_HOOK           0
#define configUSE_APPLICATION_TASK_TAG         0
#define configUSE_COUNTING_SEMAPHORES          1
#define configGENERATE_RUN_TIME_STATS          0

#endif /* FREERTOS_CONFIG_H */'
cd ../build && make
