QT += core
QT -= gui

CONFIG += c++11

TARGET = TestingOpenCV
CONFIG += console
CONFIG -= app_bundle

TEMPLATE = app

SOURCES += main.cpp

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

#INCLUDEPATH += /usr/local/include/opencv

#INCLUDEPATH += `pkg-config opencv --cflags`
INCLUDEPATH += /usr/local/include/opencv
INCLUDEPATH += /usr/local/include/opencv2

#INCLUDEPATH += .
#INCLUDEPATH += /usr/local/include
#INCLUDEPATH += /usr/local/include/opencv
#INCLUDEPATH += /usr/local/include/opencv2
#INCLUDEPATH += /usr/local/include/opencv2/core
#INCLUDEPATH += /usr/local/include/opencv2/highgui
#INCLUDEPATH += /usr/local/include/opencv2/imgproc
#INCLUDEPATH += /usr/local/include/opencv2/flann
#INCLUDEPATH += /usr/local/include/opencv2/photo
#INCLUDEPATH += /usr/local/include/opencv2/video
#INCLUDEPATH += /usr/local/include/opencv2/features2d
#INCLUDEPATH += /usr/local/include/opencv2/objdetect
#INCLUDEPATH += /usr/local/include/opencv2/calib3d
#INCLUDEPATH += /usr/local/include/opencv2/ml
#INCLUDEPATH += /usr/local/include/opencv2/contrib

#INCLUDEPATH += /usr/local/include/opencv2/jasper
#INCLUDEPATH += /usr/local/include/opencv2/tiff
#INCLUDEPATH += /usr/local/include/opencv2/png
#INCLUDEPATH += /usr/local/include/opencv2/jpeg
#INCLUDEPATH += `pkg-config opencv --cflags`

LIBS += `pkg-config opencv --cflags --libs`

#LIBS += -L/usr/local/lib \
#        #-lopencv_shape \
#        -lopencv_stitching \
#        -lopencv_objdetect \
#        -lopencv_superres \
#        -lopencv_videostab \
#        #-lippicv \
#        -lopencv_calib3d \
#        -lopencv_features2d \
#        -lopencv_highgui \
#        #-lopencv_videoio \
#        #-lopencv_imgcodecs \
#        -lopencv_video \
#        -lopencv_photo \
#        -lopencv_ml \
#        -lopencv_imgproc \
#        -lopencv_flann \
#        -lopencv_core
##        -fopenmp

#LIBS += -L/usr/local/lib
#LIBS += -L/usr/local/share/OpenCV/3rdparty/lib
#LIBS += -lopencv_contrib
#LIBS += -lopencv_stitching
#LIBS += -lopencv_nonfree
#LIBS += -lopencv_superres
#LIBS += -lopencv_ocl
#LIBS += -lopencv_ts
#LIBS += -lopencv_videostab
#LIBS += -lopencv_gpu
#LIBS += -lopencv_photo
#LIBS += -lopencv_objdetect
#LIBS += -lopencv_legacy
#LIBS += -lopencv_video
#LIBS += -lopencv_ml
#LIBS += -lopencv_calib3d
#LIBS += -lopencv_features2d
#LIBS += -lopencv_highgui
#LIBS += -lIlmImf
#LIBS += -lopencv_imgproc
#LIBS += -lopencv_flann
#LIBS += -lopencv_core
#LIBS += -lrt
#LIBS += -lpthread
#LIBS += -lm
#LIBS += -ldl
#LIBS += -lstdc++
#LIBS += -lzlib
#        -libjasper \
#        -libtiff \
#        -libpng \
#        -libjpeg
