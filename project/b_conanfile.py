from conan import ConanFile

class calcProjRecipe(ConanFile):
    settings = "os", "compiler", "build_type", "arch"
    generators = "CMakeToolchain", "CMakeDeps"

    def requirements(self):
        self.requires("dep1/1.0.0")
        self.requires("dep2/1.0.0") 

    # def build_requirements(self):
    #     self.tool_requires("cmake/3.22.6")