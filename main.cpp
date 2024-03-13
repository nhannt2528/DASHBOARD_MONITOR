#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "theme.h"
#include "mqttservices.h"
#include  "sensor.h"

int main(int argc, char *argv[])
{
    qputenv("QT_IM_MODULE", QByteArray("qtvirtualkeyboard"));

#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    QQmlContext *context = engine.rootContext();
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
        &app, [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        }, Qt::QueuedConnection);
    engine.load(url);

    Theme theme;
    theme.setBackgroundColor(QColor("#000000"));
    theme.setWidgetBackgroundColor(QColor("#1E1E1E"));
    theme.setBtnColor(QColor("#F52B2C"));
    theme.setBtnOnColor(QColor("#F52B2C"));
    theme.setBtnOffColor(theme.widgetBackgroundColor());
    context->setContextProperty("theme",&theme);
    MqttServices mqttClient;
    QObject::connect(&mqttClient, &MqttServices::connected, []() {
        qDebug() << "Connected to MQTT broker";
        // Thực hiện các hoạt động sau khi kết nối thành công
    });
    QObject::connect(&mqttClient, &MqttServices::disconnected, []() {
        qDebug() << "Disconnected from MQTT broker";
        // Thực hiện các hoạt động khi mất kết nối
    });
    QObject::connect(&mqttClient, &MqttServices::messageReceived, [](const QString &topic, const QString &message) {
        qDebug() << "Message received - Topic:" << topic << ", Message:" << message;
    });

    mqttClient.connectToBroker("127.0.0.1", 1883);
    Sensor *m_sensor=new Sensor(&mqttClient);
    context->setContextProperty("m_sensor",m_sensor);
    return app.exec();
}
