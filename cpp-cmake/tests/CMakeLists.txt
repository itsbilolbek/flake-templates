add_executable(unit_tests test_mylib.cpp)
target_link_libraries(unit_tests PRIVATE mylib)

add_test(NAME LibTest COMMAND unit_tests)
