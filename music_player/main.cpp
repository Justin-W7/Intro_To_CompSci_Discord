#include "mainwindow.h"

#include <QApplication>
#include <QPushButton>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;

    // create a button
    QPushButton *button_play = new QPushButton("Play", &w);
    button_play->setGeometry(100, 80, 80, 50);

    w.show();

    return a.exec();
}
