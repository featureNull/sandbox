@echo off
setlocal EnableDelayedExpansion

REM ---------------------------------------------------------------------------
REM figure out if neccesarry submoduiles are there
if not exist boost (
	echo missing subfolder "boost"
	echo you must clone before, or something real bad happened
	exit /b 1
)

if not exist opencv (
	echo missing subfolder "opencv"
	echo you must clone before, or something real bad happened
	exit /b 1
)

if not exist assimp (
	echo missing subfolder "assimp"
	echo you must clone before, or something real bad happened
	exit /b 1
)



REM ---------------------------------------------------------------------------
REM mess to figure out visual studio version for cmake
@echo off

if not defined VisualStudioVersion (
	echo. you must run config.bat in a "visual studio command prompt"
	echo. start "Developer command prompt for Vs2015/VS2019"
	exit /b %errorlevel%
)

if %VisualStudioVersion%==16.0 (
	set cmake_generator=Visual Studio 16 2019
) else if %VisualStudioVersion%==14.0 (
	set cmake_generator=Visual Studio 14 2015
) else (
	echo. unsuppoerted Visual Studio version: %VisualStudioVersion%
	echo. may update this batch file
	exit /b %errorlevel%
)

REM cmake friendly Vsisual studio version
echo cmake generator="%cmake_generator%"

REM ---------------------------------------------------------------------------
REM boost setupt build
pushd .
cd boost
call bootstrap.bat

if %errorlevel% NEQ 0 ( 
    echo. boost bootstrap failed
    exit /b %errorlevel%
)
popd

REM ---------------------------------------------------------------------------
REM cmake  opencv in debug mode
cmake -G "%cmake_generator%" -S ./opencv -B ./opencv/build 

IF %ERRORLEVEL% NEQ 0 ( 
    echo. opencv cmake failed
    exit %ERRORLEVEL%
)

REM ---------------------------------------------------------------------------
REM cmake assimp
pushd .
cd assimp

REM assimp install dir mit slashes erzeugen
set "assimp_install_prefix=%cd%
set "assimp_install_prefix=%assimp_install_prefix:\=/%"
echo "%assimp_install_prefix%"

cmake -G "%cmake_generator%"^
 -DCMAKE_INSTALL_PREFIX:STRING="%assimp_install_prefix%"^
 -DASSIMP_INSTALL_PDB=False

popd

if %errorlevel% NEQ 0 ( 
    echo. assimp cmake failed
    exit /b %errorlevel%
)
