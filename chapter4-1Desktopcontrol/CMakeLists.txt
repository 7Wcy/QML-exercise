cmake_minimum_required(VERSION 3.16)

project(chapter4-1Desktopcontrol VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

find_package(Qt6 REQUIRED COMPONENTS QuickControls2)

# 添加你的所有 .png 文件到 SOURCES 属性中
file(GLOB QML_IMAGES "images/*.png")

qt_add_executable(appchapter4-1Desktopcontrol
    main.cpp
    icon.rc
)

qt_add_qml_module(appchapter4-1Desktopcontrol
    URI chapter4-1Desktopcontrol
    VERSION 1.0
    QML_FILES Main.qml
    SOURCES ${QML_IMAGES}  # 包括所有 .png 文件
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appchapter4-1Desktopcontrol PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appchapter4-1Desktopcontrol
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appchapter4-1Desktopcontrol
    PRIVATE Qt6::Quick
)

target_link_libraries(appchapter4-1Desktopcontrol
    PRIVATE Qt6::QuickControls2
)

include(GNUInstallDirs)
install(TARGETS appchapter4-1Desktopcontrol
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
