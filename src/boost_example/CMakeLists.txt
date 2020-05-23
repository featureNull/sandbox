include(SourceGroupByFolder)

find_package(Boost COMPONENTS program_options REQUIRED)
include_directories(${Boost_INCLUDE_DIR})

SET (App_HEADERS
	Foo.h
    puhh/defs.h)

SET (App_SOURCES
	main.cpp
    Foo.cpp)

add_executable(App ${App_HEADERS} ${App_SOURCES})

# group source files
set_target_properties(App PROPERTIES FOLDER "src")
target_link_libraries(App LINK_PUBLIC Boost::program_options )

source_group_by_folder(App)
