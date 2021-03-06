#include <QApplication>
#include <QQmlApplicationEngine>
#include <QtQml>

#include "simplesimulator.h"

int main(int argc, char *argv[])
{
    qmlRegisterType<SimpleSimulator>("SimpleSimulator", 1, 0, "SimpleSimulator");
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
