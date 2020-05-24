# -----------------------------------------------------------------------------
# boost is prebuild
message(STATUS "boost is prebuild and handled in external.cmake")

# ------------------------------------------------------------------------------
# OPENCV is prebuild and handled in external.cmake

# ------------------------------------------------------------------------------
# GETEST
# gtest is build always to respect compiler and linker settings
# see https://github.com/google/googletest/blob/master/googletest/README.md
add_subdirectory(gtest)

# organize gtest in folders
set_target_properties(gmock PROPERTIES FOLDER "external/gtest")
set_target_properties(gmock_main PROPERTIES FOLDER "external/gtest")
set_target_properties(gtest PROPERTIES FOLDER "external/gtest")
set_target_properties(gtest_main PROPERTIES FOLDER "external/gtest")

# ------------------------------------------------------------------------------
# GLM is header only and does notz produce a target

# ------------------------------------------------------------------------------
# ASSIMP is prebuild and handled in external.cmake

# ------------------------------------------------------------------------------
# GLEW
# scheiss fucking cmake hat keinen variablen scope, scheiss fucking glew 
# macht folgende variable
option(glew-cmake_BUILD_SHARED "Build the shared glew library" OFF)
option(glew-cmake_BUILD_STATIC "Build the static glew library" ON)
option(ONLY_LIBS "Do not build executables" ON)

#option (ONLY_LIBS ON)
#set(glew-cmake_BUILD_SHARED OFF)
add_subdirectory(glew)

# organize project folder
set_target_properties(libglew_static PROPERTIES FOLDER "external/glew")


# ------------------------------------------------------------------------------
# GLFW
option(GLFW_BUILD_DOCS "Build the GLFW documentation" OFF)
option(GLFW_INSTALL "Generate installation target" OFF)

add_subdirectory(glfw)

# organize project folder
set_target_properties(glfw PROPERTIES FOLDER "external/glfw")

