cmake_minimum_required(VERSION 3.10)
project(HelloWorldProject VERSION 0.1.0 LANGUAGES C CXX)

# Crucial for Helix/Zed LSP support
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 20)

add_subdirectory(lib)
add_subdirectory(src)

enable_testing()
add_subdirectory(tests)
