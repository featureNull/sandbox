# nix aus der registry, oder so scheiss
set(CMAKE_FIND_PACKAGE_NO_PACKAGE_REGISTRY "Yes" CACHE BOOL "")
set(CMAKE_FIND_PACKAGE_NO_SYSTEM_PACKAGE_REGISTRY "Yes" CACHE BOOL "")

get_filename_component(PARENT_DIR ${CMAKE_CURRENT_LIST_DIR} DIRECTORY)

#
# config boost
#
set(Boost_USE_STATIC_LIBS ON CACHE BOOL "")
# version mismatch .73, 74 at boost download ???
set(__Boost_PATH "external/boost/stage/lib/cmake/Boost-1.74.0")
set(Boost_DIR "${PARENT_DIR}/${__Boost_PATH}" CACHE PATH "")
message(STATUS "Boost_DIR=${Boost_DIR}")

#
# config opencv
#
set(__OpenCV_PATH "external/opencv/build")
set(OpenCV_DIR "${PARENT_DIR}/${__OpenCV_PATH}" CACHE PATH "")
set(OpenCV_DEBUG_DLL_DIR "${PARENT_DIR}/${__OpenCV_PATH}/bin/Debug" CACHE PATH "")
message(STATUS "OpenCV_DIR=${OpenCV_DIR}")
message(STATUS "OpenCV_DEBUG_DLL_DIR=${OpenCV_DEBUG_DLL_DIR}")

#
# config glm
#
set(__glm_PATH "external/glm/cmake/glm")
set(glm_DIR "${PARENT_DIR}/${__glm_PATH}" CACHE PATH "")
message(STATUS "glm_DIR=${glm_DIR}")



#
# config assimp
#
set(__assimp_PATH "external/assimp")
set(assimp_DIR "${PARENT_DIR}/${__assimp_PATH}" CACHE PATH "")
set(assimp_DEBUG_DLL_DIR "${PARENT_DIR}/${__assimp_PATH}/bin/Debug" CACHE PATH "")
message(STATUS "assimp_DIR=${assimp_DIR}")
