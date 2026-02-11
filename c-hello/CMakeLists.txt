cmake_minimum_required(VERSION 3.10)
project(HelloWorldProject C)

# Crucial for Helix/Zed LSP support
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_subdirectory(lib)
add_subdirectory(src)

enable_testing()
add_subdirectory(tests)
