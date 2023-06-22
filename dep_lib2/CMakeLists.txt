cmake_minimum_required(VERSION 3.5)

project(dep_lib2 VERSION 1.0.0)

option(EXPORT_BUILD_TREE "Export build tree in /home/user/.cmake registry" OFF)

set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/cmake/module)
set(CMAKE_CONFIG_PATH ${CMAKE_CURRENT_LIST_DIR}/cmake/config)
include(configuration)

if(CMAKE_VERSION VERSION_LESS "3.7.0")
    set(CMAKE_INCLUDE_CURRENT_DIR ON)
endif()

add_subdirectory(src)

include(installation)
