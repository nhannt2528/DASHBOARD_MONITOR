import QtQuick 2.15
import QtQuick.Controls 2.15
Item {
    property string sensor_name: "value"
    width: 209
    height: 187
    Rectangle{
    color: theme.backgroundColor
    radius: 10
    anchors.fill: parent
    Label{
        text: sensor_name
        font.pixelSize: 25
        color: "white"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 15
    }
    }
}
