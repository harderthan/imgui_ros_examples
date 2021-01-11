cmake_minimum_required(VERSION 3.0.2)
project(imgui_ros_examples)

add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  roscpp
)

catkin_package(
#  INCLUDE_DIRS include
  LIBRARIES imgui
#  CATKIN_DEPENDS roscpp
#  DEPENDS system_lib
)

# Add the ImGui Cmake Module
include(./cmake/imgui.cmake)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

add_executable(sdl_opengl3 src/sdl_opengl3.cpp)
target_link_libraries(sdl_opengl3
  imgui
  ${catkin_LIBRARIES}
)