cmake_minimum_required(VERSION 3.8)

project(DisplayImage)

find_package(OpenCV REQUIRED COMPONENTS core imgproc highgui)
find_package(glm REQUIRED)
find_package(assimp REQUIRED)

include_directories(
#   ${OpenCV_INCLUDE_DIRS}
    ${GLM_INCLUDE_DIRS}
#    ${ASSIMP_INCLUDE_DIRS}
)

#link_directories(${ASSIMP_LIBRARY_DIRS})


add_executable(DisplayImage DisplayImage.cpp)

target_link_libraries(DisplayImage PUBLIC ${OpenCV_LIBS} assimp::assimp libglew_static)

#target_link_libraries(${PROJECT_NAME} ${ASSIMP_LIBRARIES})

set_target_properties(DisplayImage
    PROPERTIES VS_DEBUGGER_ENVIRONMENT 
    "PATH=${OpenCV_DEBUG_DLL_DIR};${assimp_DEBUG_DLL_DIR};")

message(STATUS  "OpenCV_DEBUG_DLL_DIR = ${OpenCV_DEBUG_DLL_DIR}")
message(STATUS  "ASSIMP_LIBRARIES = ${ASSIMP_LIBRARIES}")
message(STATUS  "ASSIMP_LIBRARY_DIRS = ${ASSIMP_LIBRARY_DIRS}")


