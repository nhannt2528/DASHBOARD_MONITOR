import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: 883
    height: 75
    Rectangle{

        color: theme.backgroundColor
        radius: 4
        anchors.fill: parent
    }
        Label{
            text: "BLOOM 1"
            font.pixelSize: 30
            anchors.verticalCenter: parent.verticalCenter
            color: "white"
            anchors.left: parent.left
            anchors.leftMargin: 10
            font.family: "ThinFont"
        }
        Label{
            id:rtcTimeId
            text: "11:20"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 50
            color: "white"
            font.bold: true

        }
    }

