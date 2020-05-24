# Sandbox build

Welcome to partscout server repo

## Prerequisites

- Visual Studio 2019 
- Git
- CMake > 3.17.2

## Getting Startet

1. checkout repo 
   ``clone --recursive https://github.com/..``

2. ``cd external``

3. follow build steps in ``external/README.md`` to build external dependencies

4. cmake current Project

5. Build in msvc

### Prefered CMake Settings

Choose build directory in cmake gui

- ``...pscout_server/build``, since ``build`` Folder is included in ``.gitignore`` 

- choose any directory outside ``pscout_server``

  

### Tips and Tricks

- do not checkout your repo in a ssd storege, since build artefacts has a huge sice



Hello world from old desktop