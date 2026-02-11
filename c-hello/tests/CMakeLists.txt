add_executable(unit_tests test_mylib.c)
target_link_libraries(unit_tests PRIVATE mylib)

add_test(NAME LibTest COMMAND unit_tests)
