include(SourceGroupByFolder)
include(GoogleTest)

SET (apptest_SOURCES
    deep/InnerTest.cpp
	FooTest.cpp
    main.cpp)


add_executable(apptest ${apptest_SOURCES})
target_link_libraries(apptest gtest_main)

# group source files
set_target_properties(apptest PROPERTIES FOLDER "test")
source_group_by_folder(apptest)

# addd tests to gtest automatic magic finding test suites
gtest_add_tests(apptest "" AUTO)
