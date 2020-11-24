cmake_minimum_required(VERSION 3.17)
project(Pandemic-simulation)

#set(SFML_STATIC_LIBRARIES TRUE)
set(CMAKE_CXX_STANDARD 17)
find_package(SFML 2.5 COMPONENTS system window graphics)

add_executable(Pandemic-simulation main.cpp event.cpp event.h pandemic.cpp pandemic.h point.cpp point.h vector_t.h wall.cpp wall.h)
#target_link_libraries(Pandemic-simulation sfml-system sfml-window sfml-graphics -static)
target_link_libraries(Pandemic-simulation sfml-system sfml-window sfml-graphics)