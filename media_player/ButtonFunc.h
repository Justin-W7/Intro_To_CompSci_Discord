#ifndef BUTTONFUNC_H
#define BUTTONFUNC_H

#include <QObject>
#include <QQmlEngine>
#include <iostream>

class ButtonFunc: public QObject
{
    Q_OBJECT
    QML_ELEMENT
    QML_SINGLETON

public:
    Q_INVOKABLE void play_button_click();
    Q_INVOKABLE void back_button_click();
    Q_INVOKABLE void next_button_click();
};

#endif // BUTTONFUNC_H
