add_library(calculator SHARED Calculator.cpp)
add_library(my_project::calculator ALIAS calculator) # alias for build-tree usage

target_compile_features(calculator PRIVATE cxx_std_17)

set_target_properties(calculator PROPERTIES
  EXPORT_NAME my_lib
  SOVERSION ${PROJ_SOVERSION}
  VERSION ${PROJ_BUILDVERSION}
)

target_include_directories(calculator PUBLIC
  $<INSTALL_INTERFACE:include>
  $<BUILD_INTERFACE:${CMAKE_CURRENT_LIST_DIR}/../..>
)

target_link_libraries(calculator PUBLIC
dep1::adder
)

# -- Installation --

install(TARGETS calculator EXPORT my-project-targets LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})

install(FILES
  calculator.h
  DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/proj/Calculator
)