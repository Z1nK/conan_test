add_executable(calc-app)

target_compile_features(calc-app PRIVATE cxx_std_17)

target_include_directories(calc-app
  PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}
)

target_sources(calc-app
  PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/main.cpp
)

target_link_libraries(calc-app
  PRIVATE
  my_project::calculator
)

# -- Installation --

install(TARGETS calc-app RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})
