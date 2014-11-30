QT          += widgets xmlpatterns
FORMS       += schema.ui schema_mobiles.ui
HEADERS     = mainwindow.h ../shared/xmlsyntaxhighlighter.h
RESOURCES   = schema.qrc
SOURCES     = main.cpp mainwindow.cpp ../shared/xmlsyntaxhighlighter.cpp
INCLUDEPATH += ../shared/

target.path = $$[QT_INSTALL_EXAMPLES]/xmlpatterns/schema
INSTALLS += target

freebsd {
	LIBS += -L/usr/local/lib
	QMAKE_INCDIR_OPENGL = /usr/local/include
}

maemo5: CONFIG += qt_example

