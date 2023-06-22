#  CALC_PROJECT_INCLUDE_DIRS - include directories
#  CALC_PROJECT_LIBRARIES    - libraries to link against

get_filename_component(CALC_PROJECT_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)

include(CMakeFindDependencyMacro)

find_dependency(dep1)
find_dependency(dep2)

if(TARGET calc_project::calculator)
else()
  message(STATUS "calc-project-config.cmake including ${CALC_PROJECT_CMAKE_DIR}/calc-project-targets.cmake")
  include("${CALC_PROJECT_CMAKE_DIR}/calc-project-targets.cmake")
endif()

set(CALC_PROJECT_LIBRARIES calc_project::calculator)

message(STATUS "project-config.cmake in ${CMAKE_CURRENT_LIST_FILE}")
message(STATUS "PROJECT_LIBRARIES ${CALC_PROJECT_LIBRARIES}")
