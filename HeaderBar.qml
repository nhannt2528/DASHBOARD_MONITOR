import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: 883
    height: 75
    Component.onCompleted: {
        updateRealTime();
    }
    Timer{
        interval: 1000
        running: true
        repeat: true
        onTriggered: {
            updateRealTime();
        }
    }

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
            text: "00:00"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 50
            color: "white"
            font.bold: true

        }
        Image {
            id: logoId
            source: "qrc:/icon/logo 1.png"
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: -10
        }


        function updateRealTime(){
            var date = new Date()
            var hours = date.getHours().toString().padStart(2, '0')
            var minutes = date.getMinutes().toString().padStart(2, '0')
            rtcTimeId.text=hours+":"+minutes;
        }
    }


