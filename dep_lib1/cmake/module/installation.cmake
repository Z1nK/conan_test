# -----------------------------------------------------------------------------
# Installation
# Credits to https://pabloariasal.github.io/2018/02/19/its-time-to-do-cmake-right,
# https://gitlab.kitware.com/cmake/community/-/wikis/doc/tutorials/Exporting-and-Importing-Targets
# -----------------------------------------------------------------------------

set(INSTALL_CONFIGDIR ${CMAKE_INSTALL_LIBDIR}/cmake/dep1)

message("CMAKE_INSTALL_LIBDIR=" ${CMAKE_INSTALL_LIBDIR})

# exporting targets to a script and installing it
install(EXPORT dep1-targets FILE dep1-targets.cmake NAMESPACE dep1:: DESTINATION ${INSTALL_CONFIGDIR})

# -----------------------------------------------------------------------------
# Exporting
# -----------------------------------------------------------------------------

# Add all targets to the build-tree export set
export(
  TARGETS
    adder
  NAMESPACE
    dep1::
  FILE
    "${PROJECT_BINARY_DIR}/dep1-targets.cmake"
)

# Export the package for use from the build-tree (goes to $HOME/.cmake)
if(EXPORT_BUILD_TREE)
  set(CMAKE_EXPORT_PACKAGE_REGISTRY ON)
  export(PACKAGE dep1)
endif()

# -----------------------------------------------------------------------------
# Creating and installing dep1-config.cmake
# -----------------------------------------------------------------------------

include(CMakePackageConfigHelpers)

# to use in the build tree
configure_package_config_file(${CMAKE_CURRENT_LIST_DIR}/../config/dep1-config.cmake.in
    ${CMAKE_CURRENT_BINARY_DIR}/dep1-config.cmake
    INSTALL_DESTINATION ${INSTALL_CONFIGDIR}
)

# to use in install tree
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/dep1-config.cmake DESTINATION ${INSTALL_CONFIGDIR})

# -----------------------------------------------------------------------------
# Create and install dep1-config-version.cmake file
# -----------------------------------------------------------------------------

write_basic_package_version_file(${CMAKE_CURRENT_BINARY_DIR}/dep1-config-version.cmake VERSION
    ${PROJECT_VERSION} COMPATIBILITY AnyNewerVersion)

install(FILES ${CMAKE_CURRENT_BINARY_DIR}/dep1-config-version.cmake DESTINATION ${INSTALL_CONFIGDIR})
