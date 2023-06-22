# -----------------------------------------------------------------------------
# Modules
# -----------------------------------------------------------------------------

# include(CTest)
include(GNUInstallDirs)

# -----------------------------------------------------------------------------
# Variables
# -----------------------------------------------------------------------------

set(PROJ_SOVERSION ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR})
set(PROJ_BUILDVERSION ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_PATCH})

# -----------------------------------------------------------------------------
# Directories
# -----------------------------------------------------------------------------
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})
# -----------------------------------------------------------------------------
# Dependencies
# -----------------------------------------------------------------------------
find_package(dep1 REQUIRED)
# -----------------------------------------------------------------------------
# Flags
# -----------------------------------------------------------------------------

