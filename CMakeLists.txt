cmake_minimum_required(VERSION 3.24.0)

if( CMAKE_SOURCE_DIR STREQUAL CMAKE_CURRENT_SOURCE_DIR )
	set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/_out/lib)
	set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/_out/lib)
	set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/_out/bin)

	project(glad)
endif()

file(GLOB_RECURSE SRC_FILES ./*.c)
add_library(glad ${SRC_FILES})

target_include_directories(glad
	PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
