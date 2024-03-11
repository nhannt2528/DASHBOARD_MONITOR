import QtQuick 2.15
import QtQuick.Controls 2.15
Item {
    property string sensor_name: "value"
    property string icon_path: "path/to/your/icon.png"
    property real sensor_value: 0
    width: 230
    height: 188
    Rectangle{
    color: theme.backgroundColor
    radius: 10
    anchors.fill: parent
    Label{
        id:sensorNameId
        text: sensor_name
        font.pixelSize: 25
        color: "white"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 15
    }
    Image{
        id:iconSensorId
        width: 50
        height: 50
        source: icon_path
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.verticalCenter: parent.verticalCenter
    }
    Label{
        id:sensorValue
        text: sensor_value
        font.pixelSize: 40
        color: "white"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        // anchors.left: iconSensorId.right
        // anchors.leftMargin: 20

    }
    }
}
