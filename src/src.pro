TEMPLATE = lib
CONFIG += c++11

QT += qml quick widgets opengl openglextensions

TARGET = SimVis

SOURCES += simulator.cpp \
    visualizer.cpp \
    renderable.cpp \
    billboards2d.cpp \
    points2d.cpp \
    simvismoduleplugin.cpp

HEADERS += \
    simulator.h \
    visualizer.h \
    renderable.h \
    billboards2d.h \
    points2d.h \
    SimVis/Billboards2D \
    SimVis/Simulator \
    SimVis/Points2D \
    SimVis/Renderable \
    SimVis/Visualizer \
    simvismoduleplugin.h

DISTFILES += \
    qmldir

!equals(_PRO_FILE_PWD_, $$OUT_PWD) {
    unix {
        copyheaders.commands =
        LIBRARY_FILES = $$OUT_PWD/lib$${TARGET}.so*
    } macx {
        copyheaders.commands = rm -r $$OUT_PWD/$$TARGET &&
        LIBRARY_FILES = $$OUT_PWD/lib$${TARGET}.dylib*
    } win32 {
        copyheaders.commands =
        LIBRARY_FILES = $$OUT_PWD/$${TARGET}.dll*
    }
    copyheaders.commands += $$QMAKE_MKDIR $$OUT_PWD/$$TARGET && $(COPY_DIR) $$_PRO_FILE_PWD_/qmldir $$LIBRARY_FILES $$OUT_PWD/$$TARGET
    first.depends = $(first) copyheaders
    export(first.depends)
    export(copyheaders.commands)
    QMAKE_EXTRA_TARGETS += first copyheaders
}
