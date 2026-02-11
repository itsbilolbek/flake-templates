add_executable(hello_world main.c)
target_link_libraries(hello_world PRIVATE mylib)

include(GNUInstallDirs)
install(TARGETS hello_world RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})
