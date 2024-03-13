#include "mqttservices.h"

MqttServices::MqttServices(QObject *parent)
    : QObject{parent},m_client(new QMqttClient(this))
{
    connect(m_client, &QMqttClient::connected, this, &MqttServices::onConnected);
    connect(m_client, &QMqttClient::disconnected, this, &MqttServices::onDisconnected);
    connect(m_client, &QMqttClient::messageReceived, this, &MqttServices::onMessageReceived);
    connect(m_client, &QMqttClient::stateChanged, this, &MqttServices::onStateChanged);
}

void MqttServices::connectToBroker(const QString &host, quint16 port)
{
    m_host = host;
    m_port = port;
    m_client->setHostname(host);
    m_client->setPort(port);
    m_client->connectToHost();

}

void MqttServices::disconnectFromBrocker()
{
    m_client->disconnectFromHost();
}

void MqttServices::publishMessage(const QString &topic, const QString &message)
{
    m_client->publish(QMqttTopicName(topic), message.toUtf8());
}

void MqttServices::setClientId(const QString &clientId)
{
    m_clientID=clientId;
    m_client->setClientId(clientId);
}

void MqttServices::subscribeToTopic(const QString &topic)
{
  m_client->subscribe(QMqttTopicFilter(topic));
}

void MqttServices::onConnected()
{
    emit connected();
}

void MqttServices::onDisconnected()
{
    emit disconnected();
}

void MqttServices::onMessageReceived(const QByteArray &message, const QMqttTopicName &topic)
{
    emit messageReceived(topic.name(),QString::fromUtf8(message));
}

void MqttServices::onStateChanged(QMqttClient::ClientState state)
{
    if (state == QMqttClient::Disconnected)
    {
        m_client->connectToHost();
    }
}

