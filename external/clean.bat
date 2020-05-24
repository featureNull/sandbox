REM clean all external dependencies after build
REM cleans all tempory compiler and linker files such as *.obj, *.pch, *.ilk

REM compiler artefacts
del /S *.obj
del /S *.pch

REM linker artefacts
del /S *.ilk

pushd .
REM in opencv delete debug database for 3rdparty stuff
cd opencv\build\3rdparty
del /S *.pdb
popd



