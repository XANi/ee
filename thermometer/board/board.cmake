# EFM32 Emlib CMake file
#
# Configures the emlib and adds it to the build

##### Files #####

# Headers
include_directories(${CMAKE_CURRENT_LIST_DIR}/inc)

# Source files
FILE(GLOB BOARD_SOURCES ${CMAKE_CURRENT_LIST_DIR}/src/*.c)

##### Outputs #####

# Create emlib library
add_library(board ${BOARD_SOURCES})

# Add library to build
set(LIBS ${LIBS} drivers)
