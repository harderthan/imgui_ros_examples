set(IMGUI_ROOT_PATH "./imgui")

find_package(SDL2 REQUIRED)
include_directories(${SDL2_INCLUDE_DIRS})

find_package(OpenGL REQUIRED)
include_directories(${OpenGL_INCLUDE_DIRS})

include_directories(
  ${IMGUI_ROOT_PATH}/
  ${IMGUI_ROOT_PATH}/backends
  ${IMGUI_ROOT_PATH}/examples/libs/gl3w
  ${IMGUI_ROOT_PATH}/examples/libs/glfw/include
)

add_library(imgui SHARED
  imgui/imgui.cpp
  imgui/imgui_demo.cpp
  imgui/imgui_draw.cpp
  imgui/imgui_tables.cpp
  imgui/imgui_widgets.cpp
  imgui/backends/imgui_impl_sdl.cpp
  imgui/backends/imgui_impl_opengl3.cpp
  imgui/examples/libs/gl3w/GL/gl3w.c
)
set_source_files_properties(imgui/examples/libs/gl3w/GL/gl3w.c PROPERTIES COMPILE_FLAGS -Wno-pedantic)
target_link_libraries(imgui
  ${SDL2_LIBRARIES}
  GL
)
set_source_files_properties(imgui/examples/libs/gl3w/GL/gl3w.c PROPERTIES COMPILE_FLAGS -Wno-pedantic)
