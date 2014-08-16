# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = dbustest

CONFIG += link_pkgconfig
PKGCONFIG += dbus-1

CONFIG += sailfishapp

SOURCES += src/dbustest.cpp

OTHER_FILES += qml/dbustest.qml \
    qml/cover/CoverPage.qml \
    qml/pages/FirstPage.qml \
    qml/pages/SecondPage.qml \
    rpm/dbustest.changes.in \
    rpm/dbustest.spec \
    rpm/dbustest.yaml \
    translations/*.ts \
    dbustest.desktop

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n
TRANSLATIONS += translations/dbustest-de.ts

