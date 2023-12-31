# -----------------------------------------------------------------------------
# Installation
# Credits to https://pabloariasal.github.io/2018/02/19/its-time-to-do-cmake-right,
# https://gitlab.kitware.com/cmake/community/-/wikis/doc/tutorials/Exporting-and-Importing-Targets
# -----------------------------------------------------------------------------

set(INSTALL_CONFIGDIR ${CMAKE_INSTALL_LIBDIR}/cmake/calc_project)

# exporting targets to a script and installing it
install(EXPORT calc-project-targets FILE calc-project-targets.cmake NAMESPACE calc_project:: DESTINATION ${INSTALL_CONFIGDIR})

# -----------------------------------------------------------------------------
# Exporting
# -----------------------------------------------------------------------------

# Add all targets to the build-tree export set
export(
  TARGETS
    calculator
  NAMESPACE
    calc_project::
  FILE
    "${PROJECT_BINARY_DIR}/calc-project-targets.cmake"
)

# Export the package for use from the build-tree (goes to $HOME/.cmake)
if(EXPORT_BUILD_TREE)
  set(CMAKE_EXPORT_PACKAGE_REGISTRY ON)
  export(PACKAGE calc_project)
endif()

# -----------------------------------------------------------------------------
# Creating and installing calc-project-config.cmake
# -----------------------------------------------------------------------------

include(CMakePackageConfigHelpers)

# to use in the build tree
configure_package_config_file(${CMAKE_CURRENT_LIST_DIR}/../config/calc-project-config.cmake.in
    ${CMAKE_CURRENT_BINARY_DIR}/calc-project-config.cmake
    INSTALL_DESTINATION ${INSTALL_CONFIGDIR}
)

# to use in install tree
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/calc-project-config.cmake DESTINATION ${INSTALL_CONFIGDIR})

# -----------------------------------------------------------------------------
# Create and install calc-project-config-version.cmake file
# -----------------------------------------------------------------------------

write_basic_package_version_file(${CMAKE_CURRENT_BINARY_DIR}/calc-project-config-version.cmake VERSION
    ${PROJECT_VERSION} COMPATIBILITY AnyNewerVersion)

install(FILES ${CMAKE_CURRENT_BINARY_DIR}/calc-project-config-version.cmake DESTINATION ${INSTALL_CONFIGDIR})
