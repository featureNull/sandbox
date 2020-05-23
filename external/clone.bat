@echo OFF
REM ---------------------------------------------------------------------------
REM script to clone external repos from git
REM seems to be the best solution in respect to docker and cmake
REM ---------------------------------------------------------------------------

REM ---------------------------------------------------------------------------
REM clone boost from github.com version "boost-1.73.0"
git.exe clone --recursive https://github.com/boostorg/boost --tag boost-1.73.0
rename boost-1.73.0 boost

REM ---------------------------------------------------------------------------
REM clone googletest from github.com version "boost-1.73.0"
git.exe clone https://github.com/google/googletest --tag release-1.10.0
rename release-1.10.0 gtest

REM ---------------------------------------------------------------------------
REM clone opencv
git.exe clone https://github.com/opencv/opencv --tag 4.3.0
rename 4.3.0 opencv

REM ---------------------------------------------------------------------------
REM clone assimp
git clone https://github.com/assimp/assimp --tag v5.0.1
rename v5.0.1 assimp

REM ---------------------------------------------------------------------------
REM clone glew
git clone https://github.com/Perlmint/glew-cmake --tag glew-cmake-2.1.0
rename glew-cmake-2.1.0 glew

REM ---------------------------------------------------------------------------
REM clone glfw
git clone https://github.com/glfw/glfw --tag 3.3.2
rename 3.3.2 glfw

REM ---------------------------------------------------------------------------
REM clone glm
git clone https://github.com/g-truc/glm --tag 0.9.9.8
rename 0.9.9.8 glm
