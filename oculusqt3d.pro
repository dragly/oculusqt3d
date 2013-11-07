QT += 3dquick

# Add more folders to ship with the application, here
folder_01.source = qml/oculus
folder_01.target = qml
DEPLOYMENTFOLDERS = folder_01

# Additional import path used to resolve QML modules in Creator's code model
QML_IMPORT_PATH =
INCLUDEPATH += /Users/anderhaf/Downloads/OculusSDK/LibOVR/Include
DEPENDPATH += /Users/anderhaf/Downloads/OculusSDK/LibOVR/Include
mac: LIBS += -framework CoreFoundation
mac: LIBS += -framework CoreGraphics
mac: LIBS += -framework IOKit
mac: LIBS += -framework ApplicationServices
mac: LIBS += -L/Users/anderhaf/Downloads/OculusSDK/LibOVR/Lib/MacOS/Release/ -lovr

linux: INCLUDEPATH += /home/svenni/apps/oculus/Oculus/OculusSDK/LibOVR/Include
linux: LIBS += -L/home/svenni/apps/oculus/Oculus/OculusSDK/LibOVR/Lib/Linux/Release/x86_64/ -lovr
linux: LIBS += -lX11
linux: LIBS += -lXinerama
linux: LIBS += -ludev

# If your application uses the Qt Mobility libraries, uncomment the following
# lines and add the respective components to the MOBILITY variable.
# CONFIG += mobility
# MOBILITY +=


# The .cpp file which was generated for your project. Feel free to hack it.
SOURCES += main.cpp \
    stereoviewport.cpp \
    qglmaskedsurface.cpp \
    qgldrawbuffersurface.cpp \
    fileio.cpp \
    oculusreader.cpp

# Installation path
# target.path =

# Please do not modify the following two lines. Required for deployment.
include(qtquick2applicationviewer/qtquick2applicationviewer.pri)
qtcAddDeployment()



HEADERS += \
    stereoviewport.h \
    qglmaskedsurface_p.h \
    qgldrawbuffersurface_p.h \
    fileio.h \
    oculusreader.h
