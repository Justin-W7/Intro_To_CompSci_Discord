/****************************************************************************
** Generated QML type registration code
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <QtQml/qqml.h>
#include <QtQml/qqmlmoduleregistration.h>

#if __has_include(<ButtonFunc.h>)
#  include <ButtonFunc.h>
#endif


#if !defined(QT_STATIC)
#define Q_QMLTYPE_EXPORT Q_DECL_EXPORT
#else
#define Q_QMLTYPE_EXPORT
#endif
Q_QMLTYPE_EXPORT void qml_register_types_media_player()
{
    QT_WARNING_PUSH QT_WARNING_DISABLE_DEPRECATED
    qmlRegisterTypesAndRevisions<ButtonFunc>("media_player", 1);
    QT_WARNING_POP
    qmlRegisterModule("media_player", 1, 0);
}

static const QQmlModuleRegistration mediaplayerRegistration("media_player", qml_register_types_media_player);
