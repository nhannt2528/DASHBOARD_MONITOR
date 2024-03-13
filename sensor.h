#ifndef SENSOR_H
#define SENSOR_H

#include <QObject>
#include "mqttservices.h"
#include <QJsonDocument>
#include <QJsonObject>
#include <QJsonArray>
class Sensor : public QObject
{
    Q_OBJECT
public:
    explicit Sensor(QObject *parent = nullptr);
    Sensor(MqttServices *mqtt);
    double temperature() const;
    void setTemperature(double newTemperature);

    double humidity() const;
    void setHumidity(double newHumidity);

    double co2() const;
    void setCo2(double newCo2);

    double vdp() const;
    void setVdp(double newVdp);

    double ec() const;
    void setEc(double newEc);

    double wwc() const;
    void setWwc(double newWwc);

private:
    MqttServices *m_mqtt;
    double m_temperature=0;
    double m_humidity=0;
    double m_co2=0;
    double m_vdp=0;
    double m_ec=0;
    double m_wwc=0;


    Q_PROPERTY(double temperature READ temperature WRITE setTemperature NOTIFY temperatureChanged FINAL)

    Q_PROPERTY(double humidity READ humidity WRITE setHumidity NOTIFY humidityChanged FINAL)

    Q_PROPERTY(double co2 READ co2 WRITE setCo2 NOTIFY co2Changed FINAL)

    Q_PROPERTY(double vdp READ vdp WRITE setVdp NOTIFY vdpChanged FINAL)

    Q_PROPERTY(double ec READ ec WRITE setEc NOTIFY ecChanged FINAL)

    Q_PROPERTY(double wwc READ wwc WRITE setWwc NOTIFY wwcChanged FINAL)

public slots:
    void updateSensor(const QMqttTopicName &topic,const QString &message );
    void onConnected();
signals:
    void temperatureChanged();
    void humidityChanged();
    void co2Changed();
    void vdpChanged();
    void ecChanged();
    void wwcChanged();
};

#endif // SENSOR_H
