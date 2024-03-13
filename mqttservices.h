#ifndef MQTTSERVICES_H
#define MQTTSERVICES_H
#include <QtMqtt/QMqttClient>
#include <QtMqtt/QMqttSubscription>
#include <QObject>
class MqttServices : public QObject
{
    Q_OBJECT
public:
    explicit MqttServices(QObject *parent = nullptr);
    void connectToBroker(const QString &host, quint16 port);
    void disconnectFromBrocker();
    void publishMessage(const QString &topic, const QString &message);
    void setClientId(const QString &clientId);
       void subscribeToTopic(const QString &topic);
signals:
    void connected();
    void disconnected();
    void messageReceived(const QString &topic, const QString &message);
private slots:
    void onConnected();
    void onDisconnected();
    void onMessageReceived(const QByteArray &message, const QMqttTopicName &topic);
    void onStateChanged(QMqttClient::ClientState state);
private:
    QMqttClient *m_client;
    QString m_host;
    quint16 m_port;
    QString m_clientID;

};

#endif // MQTTSERVICES_H
