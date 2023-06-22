add_library(adder SHARED Adder.cpp)
add_library(dep1::adder ALIAS adder) # alias for build-tree usage

target_compile_features(adder PRIVATE cxx_std_17)

set_target_properties(adder PROPERTIES
  EXPORT_NAME adder
  SOVERSION ${PROJ_SOVERSION}
  VERSION ${PROJ_BUILDVERSION}
)

target_include_directories(adder PUBLIC
  $<INSTALL_INTERFACE:include>
  $<BUILD_INTERFACE:${CMAKE_CURRENT_LIST_DIR}/../..>
)

# -- Installation --

install(TARGETS adder EXPORT dep1-targets LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})

install(FILES
  Adder.h
  DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/dep1/Adder
)