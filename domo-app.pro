QT += qml quick network

CONFIG += c++14

HEADERS += \
    client.h

SOURCES += \
    main.cpp \
    client.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)
