cmake_minimum_required (VERSION 2.6)
project (hello)
set (CMAKE_CXX_FLAGS "-I${CMAKE_CURRENT_SOURCE_DIR} -g -std=c++11 -Wall -Wextra -Werror -Wshadow -Wnon-virtual-dtor -pedantic")

enable_testing()

add_executable(hello_test hello_test.cc hello.cc)
target_compile_options(hello_test PUBLIC -coverage -fsanitize=address -fno-omit-frame-pointer)
target_link_libraries(hello_test -lasan -lgmock_main -lpthread -coverage)

