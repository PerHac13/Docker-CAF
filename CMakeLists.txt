cmake_minimum_required(VERSION 3.10)
project(CAFExample)
find_package(CAF REQUIRED)
add_executable(caf_example src/main.cpp)

# Link the required CAF libraries
target_link_libraries(caf_example
  PRIVATE 
    CAF::core
    CAF::io # Add more CAF modules as needed
)
