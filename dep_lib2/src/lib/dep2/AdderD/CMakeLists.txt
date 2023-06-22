add_library(adderD SHARED AdderD.cpp)
add_library(dep2::adderD ALIAS adderD) # alias for build-tree usage

target_compile_features(adderD PRIVATE cxx_std_17)

set_target_properties(adderD PROPERTIES
  EXPORT_NAME adderD
  SOVERSION ${PROJ_SOVERSION}
  VERSION ${PROJ_BUILDVERSION}
)

target_include_directories(adderD PUBLIC
  $<INSTALL_INTERFACE:include>
  $<BUILD_INTERFACE:${CMAKE_CURRENT_LIST_DIR}/../..>
)

# -- Installation --

install(TARGETS adderD EXPORT dep2-targets LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})

install(FILES
  AdderD.h
  DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/dep2/AdderD
)