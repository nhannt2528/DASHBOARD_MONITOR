import QtQuick 2.15
import QtQml 2.15
import "qrc:/widgets"
Item {
width: parent.width
height: parent.height
anchors.top: parent.top
anchors.topMargin: 30
SensorWidget{
    id:tempWidgetId
     sensor_name: "Temperature"
}
SensorWidget{
    id:humiWidgetId
    anchors.left: tempWidgetId.right
    anchors.leftMargin: 10
    sensor_name: "Humidity"
}
SensorWidget{
    id:co2WidgetId
    anchors.top: tempWidgetId.bottom
    anchors.topMargin: 10
    sensor_name: "CO2"
}
SensorWidget{
    id:vpdWidgetId
    anchors.left: co2WidgetId.right
    anchors.verticalCenter: co2WidgetId.verticalCenter
    anchors.leftMargin: 10
    anchors.topMargin: 10
    sensor_name: "VDP"
}
}
