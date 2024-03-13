import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    width: 90
    height: 40

    Rectangle{
        anchors.fill: parent
        radius: 5
        MouseArea{
            anchors.fill: parent
            onClicked: {
                timePopup.open();
            }
        }
        Label{
            id:timerValueId
            anchors.centerIn: parent
            text: "2:30"
            font.pixelSize: 20
        }

    }

    Popup {
        id: timePopup
        width: 150
        height: 250
        background:  Rectangle{
            anchors.fill: parent
            radius: 10
        }
        Row{
            id:rowSelectId
            anchors.fill: parent
            anchors.centerIn: parent
            Tumbler{
                id: hoursTumblerId
                model: 24
                delegate: delegateComponent
                 font.pixelSize: 20
            }
            Tumbler{
                id: minTumblerId
                model: 59
                delegate: delegateComponent
                font.pixelSize: 20

            }
        }
        Button{
            width: 100
            height: 30
            anchors.bottom:parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            text: "OK"
            onClicked: {

                timePopup.close();
                timerValueId.text=hoursTumblerId.currentIndex.toString().padStart(2,'0')+":"+minTumblerId.currentIndex.toString().padStart(2,'0');

            }
        }
        function splitTime(timeString) {
            var splitArray = timeString.split(":");
            var hour = splitArray[0];
            var minute = splitArray[1];
            return { hour: hour, minute: minute };
        }
    }

}


