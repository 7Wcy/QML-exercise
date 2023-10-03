cmake_minimum_required(VERSION 3.16)

project(chapter4-5DocumentWindows VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()
find_package(Qt6 6.4 REQUIRED COMPONENTS Widgets)
qt_add_executable(appchapter4-5DocumentWindows
    main.cpp
)

qt_add_qml_module(appchapter4-5DocumentWindows
    URI chapter4-5DocumentWindows
    VERSION 1.0
    QML_FILES Main.qml
    QML_FILES DocumentWindows.qml
    RESOURCES
        images/open.png
        images/new.png
        images/save.png
        images/saveas.png
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appchapter4-5DocumentWindows PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appchapter4-5DocumentWindows
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appchapter4-5DocumentWindows
    PRIVATE Qt6::Quick
)
target_link_libraries(appchapter4-5DocumentWindows
    PRIVATE Qt6::Widgets
)

include(GNUInstallDirs)
install(TARGETS appchapter4-5DocumentWindows
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
