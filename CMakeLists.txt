cmake_minimum_required(VERSION 3.0)

project(FcgiEchoCpp)

list(APPEND CMAKE_MODULE_PATH "${FcgiEchoCpp_SOURCE_DIR}/CMake")
include(FindFcgi)
include(FindFcgi++)


add_executable(${PROJECT_NAME} main.cpp)
set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_STANDARD 11)
target_link_libraries(${PROJECT_NAME} 
    ${FCGI_LIBRARY}
    ${FCGIPP_LIBRARY}
)

install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION bin)
