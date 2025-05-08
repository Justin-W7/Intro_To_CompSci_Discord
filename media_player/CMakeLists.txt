cmake_minimum_required(VERSION 3.16)

project(media_player VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appmedia_player
    main.cpp
)

# Properly add .qrc file using qt_add_resources
qt_add_resources(APP_RESOURCES ui/resources.qrc)
target_sources(appmedia_player PRIVATE ${APP_RESOURCES})

qt_add_qml_module(appmedia_player
    URI media_player
    VERSION 1.0
    QML_FILES
        Main.qml
        ui/control_bar/ControlBar.qml
        ui/left_screen/LeftScreen.qml
        ui/right_screen/RightScreen.qml
    SOURCES
        main.cpp
        main.h
        ButtonFunc.cpp
        ButtonFunc.h
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appmedia_player PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appmedia_player
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

# Link required Qt modules
target_link_libraries(appmedia_player
    PRIVATE Qt6::Quick Qt6::Gui
)

# Install instructions
include(GNUInstallDirs)
install(TARGETS appmedia_player
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
