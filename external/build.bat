@echo off
REM buidl external dependencies, which are prebuild

REM ---------------------------------------------------------------------------
REM build boost
pushd .
cd boost
b2 -j4 address-model=64 --build-type=minimal

if %errorlevel% NEQ 0 ( 
    echo. build boost failed
    exit /b %errorlevel%
)
popd

REM ---------------------------------------------------------------------------
REM build opencv

msbuild ./opencv/build/OpenCV.sln /property:Configuration=Debug

if %ERRORLEVEL% NEQ 0 ( 
    echo. build opencv in debug mode failed
    exit /b %errorlevel%
)

REM build opencv in release mode
msbuild ./opencv/build/OpenCV.sln /property:Configuration=Release

if %ERRORLEVEL% NEQ 0 ( 
    echo. build opencv in release mode failed
    exit /b %errorlevel%
)


REM ---------------------------------------------------------------------------
REM build assimp

pushd .
cd assimp

msbuild ALL_BUILD.vcxproj /property:Configuration=Debug

IF %errorlevel% NEQ 0 ( 
    echo. assimp debug build failed
    exit /b %errorlevel%
)

msbuild ALL_BUILD.vcxproj /property:Configuration=Release

IF %errorlevel% NEQ 0 ( 
    echo. assimp release build failed
    exit /b %errorlevel%
)

REM install
msbuild INSTALL.vcxproj /property:Configuration=Debug

IF %errorlevel% NEQ 0 ( 
    echo. assimp debug install failed
    exit /b %errorlevel%
)

msbuild INSTALL.vcxproj /property:Configuration=Release

IF %errorlevel% NEQ 0 ( 
    echo. assimp release install failed
    exit /b %errorlevel%
)

popd