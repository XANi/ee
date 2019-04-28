# EFM32 Emlib CMake file
#
# Configures the emlib and adds it to the build

##### Files #####

# Headers
include_directories(${CMAKE_CURRENT_LIST_DIR}/board)
include_directories(${CMAKE_CURRENT_LIST_DIR}/inc)

# Source files
FILE(GLOB DRIVER_SOURCES ${CMAKE_CURRENT_LIST_DIR}/src/*.c)

##### Outputs #####

# Create emlib library
add_library(drivers ${DRIVER_SOURCES})
#target_link_directories(drivers PUBLIC ${BASE_LOCATION}/emlib)
target_link_libraries(drivers emlib)


# Add library to build
set(LIBS ${LIBS} drivers)
