find_package(OpenGL REQUIRED)
find_package(glm REQUIRED)

include_directories(
	${GLM_INCLUDE_DIRS}
	.
)

#set(ALL_LIBS
#	${OPENGL_LIBRARY}
#	glfw
#	GLEW_1130
#)

add_definitions(
	-DTW_STATIC
	-DTW_NO_LIB_PRAGMA
	-DTW_NO_DIRECT3D
	-DGLEW_STATIC
	-D_CRT_SECURE_NO_WARNINGS
)

# Tutorial 2
add_executable(ogl_sample 
	tutorial02.cpp
	common/shader.cpp
	common/shader.hpp
	SimpleFragmentShader.fragmentshader
	SimpleVertexShader.vertexshader
)
target_link_libraries(ogl_sample
	${OPENGL_LIBRARY}
	libglew_static
	glfw
)
