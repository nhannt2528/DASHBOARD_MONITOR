#include "sensor.h"

Sensor::Sensor(QObject *parent)
    : QObject{parent}
{}

Sensor::Sensor(MqttServices *mqtt)
{
    m_mqtt=mqtt;
    QObject::connect(m_mqtt, &MqttServices::messageReceived,this,&Sensor::updateSensor);
    QObject::connect(m_mqtt,&MqttServices::connected,this,&Sensor::onConnected);
}

double Sensor::temperature() const
{
    return m_temperature;
}

void Sensor::setTemperature(double newTemperature)
{
    if (qFuzzyCompare(m_temperature, newTemperature))
        return;
    m_temperature = newTemperature;

    emit temperatureChanged();
}

double Sensor::humidity() const
{
    return m_humidity;
}

void Sensor::setHumidity(double newHumidity)
{
    if (qFuzzyCompare(m_humidity, newHumidity))
        return;
    m_humidity = newHumidity;
    emit humidityChanged();
}

double Sensor::co2() const
{
    return m_co2;
}

void Sensor::setCo2(double newCo2)
{
    if (qFuzzyCompare(m_co2, newCo2))
        return;
    m_co2 = newCo2;
    emit co2Changed();
}

double Sensor::vdp() const
{
    return m_vdp;
}

void Sensor::setVdp(double newVdp)
{
    if (qFuzzyCompare(m_vdp, newVdp))
        return;
    m_vdp = newVdp;
    emit vdpChanged();
}

double Sensor::ec() const
{
    return m_ec;
}

void Sensor::setEc(double newEc)
{
    if (qFuzzyCompare(m_ec, newEc))
        return;
    m_ec = newEc;
    emit ecChanged();
}

double Sensor::wwc() const
{
    return m_wwc;
}

void Sensor::setWwc(double newWwc)
{
    if (qFuzzyCompare(m_wwc, newWwc))
        return;
    m_wwc = newWwc;
    emit wwcChanged();
}

void Sensor::updateSensor(const QMqttTopicName &topic, const QString &message )
{
    QString jsonString = message;
     QJsonParseError error;
    QJsonDocument jsonDoc = QJsonDocument::fromJson(jsonString.toUtf8(),&error);
     if (error.error != QJsonParseError::NoError) {
         qDebug() << "Failed to parse JSON string. Error:" << error.errorString();
         return;
     }
     else{
         if (!jsonDoc.isNull() && jsonDoc.isObject()) {
             QJsonObject jsonObj = jsonDoc.object();
             if(jsonObj.contains("humi")){
                 setHumidity(jsonObj["humi"].toDouble());
             }
             if(jsonObj.contains("temp")){
                 setTemperature(jsonObj["temp"].toDouble());
             }
             if(jsonObj.contains("co2")){
                 setCo2(jsonObj["co2"].toDouble());
             }
             if(jsonObj.contains("vdp")){
                 setVdp(jsonObj["vdp"].toDouble());
             }
             if(jsonObj.contains("ec")){
                 setEc(jsonObj["ec"].toDouble());
             }
             if(jsonObj.contains("wwc")){
                 setWwc(jsonObj["wwc"].toDouble());
             }
         }
     }
}


void Sensor::onConnected()
{
    m_mqtt->subscribeToTopic("nhan/test");
}
