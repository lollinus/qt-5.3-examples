QT          += widgets xmlpatterns
FORMS       += forms/querywidget.ui \
               forms/querywidget_mobiles.ui
HEADERS     = querymainwindow.h ../shared/xmlsyntaxhighlighter.h
RESOURCES   = recipes.qrc
SOURCES     = main.cpp querymainwindow.cpp ../shared/xmlsyntaxhighlighter.cpp
INCLUDEPATH += ../shared/

target.path = $$[QT_INSTALL_EXAMPLES]/xmlpatterns/recipes
INSTALLS += target

maemo5: CONFIG += qt_example

freebsd:QMAKE_INCDIR_OPENGL = /usr/local/include
freebsd:LIBS += -L/usr/local/lib
