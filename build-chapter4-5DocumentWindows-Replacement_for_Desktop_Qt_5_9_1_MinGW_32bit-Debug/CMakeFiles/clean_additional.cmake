# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appchapter4-5DocumentWindows_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appchapter4-5DocumentWindows_autogen.dir\\ParseCache.txt"
  "appchapter4-5DocumentWindows_autogen"
  )
endif()
