import QtQuick 2.15
import QtQml 2.15
import QtQuick.Controls 2.15
import "qrc:/widgets"
Item {

width: parent.width
height: parent.height
anchors.top: parent.top



Label{
    id:labeEbviromentId
    text:"Environment"
    color: "white"
    font.pixelSize: 20
    anchors.top: parent.top
    anchors.topMargin: 10
}
Label{
    id:labelSensorId
    text: "Sensor"
    color: "white"
    font.pixelSize: 20
    anchors.verticalCenter: labeEbviromentId.verticalCenter
    anchors.left: sensorQualityId.left
}

SensorWidget{
    id:tempWidgetId
    icon_path: "qrc:/icon/Temperature.png"
    anchors.top: labeEbviromentId.bottom
    anchors.topMargin: 10
    sensor_value: 25.5
     sensor_name: "Temperature"
}
SensorWidget{
    id:humiWidgetId
    icon_path: "qrc:/icon/Hygrometer.png"
    sensor_value: 90
    anchors.left: tempWidgetId.right
    anchors.verticalCenter: tempWidgetId.verticalCenter
    anchors.leftMargin: 10
    sensor_name: "Humidity"
}
SensorWidget{
    id:co2WidgetId
    icon_path: "qrc:/icon/CO2.png"
    sensor_value: 1120
    anchors.top: tempWidgetId.bottom
    anchors.topMargin: 10
    sensor_name: "CO2"
}
SensorWidget{
    id:vpdWidgetId
    icon_path: "qrc:/icon/Connect.png"
    sensor_value: 1.14
    anchors.left: co2WidgetId.right
    anchors.verticalCenter: co2WidgetId.verticalCenter
    anchors.leftMargin: 10
    anchors.topMargin: 10
    sensor_name: "VDP"
}
SensorQualityWidget{
    id:sensorQualityId
    anchors.top: humiWidgetId.top
    anchors.left: humiWidgetId.right
    anchors.leftMargin: 10
}
Co2ControllerWidget{
    id:co2ControlId
    anchors.horizontalCenter: sensorQualityId.horizontalCenter
    anchors.verticalCenter: vpdWidgetId.verticalCenter
}
Label{
    id:labeDevivesId
    text: "Devices"
    color: "white"
    font.pixelSize: 20
    anchors.bottom: devicesStatusId.top
    anchors.bottomMargin: 10
    anchors.left: devicesStatusId.left
}

NumberWidgets{
    id:numberId
    anchors.top: sensorQualityId.top
    anchors.left: sensorQualityId.right
    anchors.leftMargin: 10
    anchors.bottom:labeDevivesId.top
    anchors.bottomMargin: 10
}

DevicesStatusWidget{
    id:devicesStatusId
    anchors.left: co2ControlId.right
    anchors.leftMargin: 10
    anchors.bottom:vpdWidgetId.bottom
}

}
