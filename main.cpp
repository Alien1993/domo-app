#include <QQmlContext>
#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "client.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    auto client = new Client{};
    auto context = engine.rootContext();
    context->setContextProperty("Client", QVariant::fromValue(client));

    engine.load(QUrl(QLatin1String("qrc:/main.qml")));
    return app.exec();
}
