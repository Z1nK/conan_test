import os
from conan import ConanFile
from conan.tools.cmake import CMakeToolchain, CMake, CMakeDeps, cmake_layout


class dep1Conan(ConanFile):
    name = "dep1"
    version = "1.0.0"

    # Optional metadata
    license = "some licence"
    author = "Z1nK"
    url = "https://github.com/Z1nK/conan_test/tree/main/dep_lib1"
    description = "first dependancy lib"
    topics = ("conan", "test")

    # Binary configuration
    settings = "os", "compiler", "build_type", "arch"
    options = {"shared": [True, False], "fPIC": [True, False]}
    default_options = {"shared": False, "fPIC": True}

    exports_sources = "CMakeLists.txt", "cmake/*", "src/*"

    def requirements(self):
        pass

    def config_options(self):
        if self.settings.os == "Windows":
            del self.options.fPIC

    def layout(self):
        cmake_layout(self)

    def generate(self):
        tc = CMakeToolchain(self)        
        tc.generate()

        deps = CMakeDeps(self)
        deps.generate()

    def build(self):
        cmake = CMake(self)
        cmake.configure()
        cmake.build()

    def package(self):
        cmake = CMake(self)
        cmake.install()

    def package_info(self):
        self.cpp_info.set_property("cmake_build_modules", [os.path.join(
            self.package_folder, "lib", "cmake", "dep1", "dep1-config.cmake")])
        self.cpp_info.libs = ["adder"]
