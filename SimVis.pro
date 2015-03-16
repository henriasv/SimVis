TEMPLATE = app
CONFIG -= app_bundle
CONFIG += c++11

QT += qml quick widgets opengl openglextensions

SOURCES += main.cpp \
    simulator.cpp \
    mysimulator.cpp \
    visualizer.cpp \
    renderable.cpp \
    billboards2d.cpp \
    points2d.cpp \
    camera.cpp \
    quickworker.cpp \
    navigator.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    simulator.h \
    mysimulator.h \
    visualizer.h \
    renderable.h \
    points2d.h \
    camera.h \
    quickworker.h \
    billboards2d.h \
    navigator.h
