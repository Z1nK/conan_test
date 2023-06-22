add_library(multiplier SHARED Multiplier.cpp)
add_library(dep2::multiplier ALIAS multiplier) # alias for build-tree usage

target_compile_features(multiplier PRIVATE cxx_std_17)

set_target_properties(multiplier PROPERTIES
  EXPORT_NAME multiplier
  SOVERSION ${PROJ_SOVERSION}
  VERSION ${PROJ_BUILDVERSION}
)

target_include_directories(multiplier PUBLIC
  $<INSTALL_INTERFACE:include>
  $<BUILD_INTERFACE:${CMAKE_CURRENT_LIST_DIR}/../..>
)


target_link_libraries(multiplier PUBLIC
  dep1::adder
)

# -- Installation --

install(TARGETS multiplier EXPORT dep2-targets LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})

install(FILES
  Multiplier.h
  DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/dep2/Multiplier
)