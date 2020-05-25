# Build Dependencies to 3rd party libs

1. open "Visual studio Developer Console"
2. ``cd external``
3. clone 3rd party libaries via ``clone.bat``
4. configurate makefile via ``configure.bat``
5. build via ``build.bat``
6. [pray](https://schriften.yoga-vidya.de/bhagavad-gita/tag/deutsche-ubersetzung/)
7. ``clean.bat``

you will need patience and hope with every step

## Modules

Some libaries are prebuild, others are build with the Project, depending on build time,
Cmake mess and advantages of compiler Settings change.

### Prebuild

- [assimp](https://www.assimp.org/)
- [boost](https://www.boost.org/)
- [opencv](https://opencv.org/)

### Build with Project

- [glew](https://github.com/nigels-com/glew)

- [glfw](https://github.com/glfw/glfw)

- [glm](https://glm.g-truc.net/0.9.9/index.html)

- [gtest](https://github.com/google/googletest)

  

## Note

[Submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules) does not a good job here, since we want  specific Verisons (Tag's) in our Project





