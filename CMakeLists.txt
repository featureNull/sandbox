cmake_minimum_required(VERSION 3.17)
project(supertestproject)

set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake")
message(STATUS "CMAKE_CURRENT_SOURCE_DIR = ${CMAKE_CURRENT_SOURCE_DIR}")

set_property(GLOBAL PROPERTY USE_FOLDERS ON)
set_property(GLOBAL PROPERTY PREDEFINED_TARGETS_FOLDER "CMakeTargets")

include(external)

enable_testing()

add_subdirectory(external)

add_subdirectory(app)
add_subdirectory(DisplayImage)
add_subdirectory(test)
add_subdirectory(ogl_sample)
