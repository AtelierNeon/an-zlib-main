cmake_minimum_required (VERSION 3.1...3.15.0)

## Special CMake policies
if (POLICY CMP0091 AND NOT CMAKE_VERSION VERSION_LESS 3.15)
    cmake_policy (SET CMP0091 NEW)
endif ()

## Dummy basic information for meta project
project (main)

message (STATUS "My project revision: ${MY_REVISION}")

## Project options
option (BUILD_WITH_SHARED_VCRT "Build library with shared vc runtime library." OFF)
option (BUILD_WITH_STATIC_VCRT "Build library without shared vc runtime library." OFF)
option (BUILD_WITH_WORKAROUND_ARM64RT "Build library with workaround arm64rt.lib library" OFF)
option (BUILD_WITH_WORKAROUND_OPT_GY "Build library with workaround /Gy compiler option" OFF)
option (BUILD_WITH_WORKAROUND_SOFTINTRIN "Build library with workaround softintrin.lib library" OFF)
option (BUILD_WITH_WORKAROUND_SPECTRE "Build library with workaround spectre mitigation library" OFF)

## Append custom CMake module path
list (APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/source/cmake-modules/")

## Import custom CMake modules
if (WIN32)
    include (MSVC-MyRuntimeConfig)
endif ()

## Process sub-components
add_subdirectory (source/zlib)
