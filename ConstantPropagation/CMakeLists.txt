cmake_minimum_required(VERSION 3.9)
project(ConstantPropagation)

# find LLVM packages 
set(LLVM_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../../LLVM/install/lib/cmake/llvm)
find_package(LLVM REQUIRED CONFIG)
add_definitions(${LLVM_DEFINITIONS})
include_directories(${LLVM_INCLUDE_DIRS})

# set C++ compiler standard and flags
set(CMAKE_CXX_STANDARD 14)
SET (CMAKE_CXX_FLAGS "-fno-rtti -fPIC")

# add library target for building the pass
add_library(ConstantPropagation MODULE ConstantPropagation.cpp)
set_target_properties(ConstantPropagation PROPERTIES COMPILE_FLAGS "-D__GLIBCXX_USE_CXX11_ABI=0 ")

if (APPLE) # bug fix on MacOSX
SET(CMAKE_MODULE_LINKER_FLAGS "-undefined dynamic_lookup")
endif()

target_link_libraries(ConstantPropagation)
