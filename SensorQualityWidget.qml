import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQml 2.15

Item {
    width: 257
    height: 188
    Rectangle{
        anchors.fill: parent
        color: theme.backgroundColor
        radius: 10
    }
    Rectangle{
        id:recEcId
        width: 85
        height: 80
        radius: 5
        color: theme.widgetBackgroundColor
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.top: parent.top
        anchors.topMargin: 10
        Label{
            text: "EC"
            font.pixelSize: 18
            anchors.left:iconIdEc.right
            anchors.leftMargin: 20
            color: "white"
        }

        Image {
            id:iconIdEc
            source: "qrc:/icon/Proximity Sensor.png"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
        }
    }
    Rectangle{
        id:recWWCId
        width: 85
        height: 80
        radius: 5
        color: theme.widgetBackgroundColor
        anchors.top: recEcId.bottom
        anchors.topMargin: 10
        anchors.horizontalCenter: recEcId.horizontalCenter
        Image {
            source: "qrc:/icon/Proximity Sensor.png"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
        }
    }
}
