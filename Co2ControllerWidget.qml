import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQml 2.15
Item {

    property int btnCo2State: 0
    width: 220
    height: 188


    onBtnCo2StateChanged: {
        updateColorButton();
    }
    Rectangle{
        anchors.fill: parent
        color:theme.backgroundColor
        radius: 10
    }
    Label{
        id:lableControllerId
        text: "Co2 controrler"
        font.pixelSize: 18
        color: "white"
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
    }
    Row{
        id:btnSelectModeId
        spacing: 5
        anchors.top: lableControllerId.bottom
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
        Rectangle{
            id:btnOnId
            width: 60
            height: 30
            color: theme.btnOffColor
            Label{
                text: "ON"
                anchors.centerIn: parent
                font.pixelSize: 16
                color: "white"
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    btnCo2State=1;
                }
            }
        }
        Rectangle{
            id:btnAutoId
            width: 60
            height: 30
            color: theme.btnOffColor
            Label{
                text: "AUTO"
                anchors.centerIn: parent
                font.pixelSize: 16
                color: "white"
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    btnCo2State=2;
                }
            }

        }
        Rectangle{
            id:btnOffId
            width: 60
            height: 30
            color: theme.btnOnColor
            Label{
                text: "OFF"
                anchors.centerIn: parent
                font.pixelSize: 16
                color: "white"
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    btnCo2State=0;
                }
            }

        }
    }
    Row{
        id:ecConfigId
        anchors.top: btnSelectModeId.bottom
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 10

        Rectangle{
            width: 90
            height: 50
            color: "#6698F8"
            radius: 5
            Label{
                text: "200"
                font.pixelSize: 20
                color: "white"
                anchors.centerIn: parent
                font.bold: true
            }
        }
        Rectangle{
            width: 90
            height: 50
            color: "#F86666"
            radius: 5
            Label{
                text: "800"
                font.pixelSize: 20
                color: "white"
                anchors.centerIn: parent
                font.bold: true
            }
        }
    }

    function updateColorButton(){
        switch (btnCo2State){
        case 0: //Off
            btnOffId.color=theme.btnOnColor
            btnAutoId.color=theme.btnOffColor
            btnOnId.color=theme.btnOffColor
            break;
        case 1: //On
            btnOffId.color=theme.btnOffColor
            btnAutoId.color=theme.btnOffColor
            btnOnId.color=theme.btnOnColor
            break;
        case 2: //Auto
            btnOffId.color=theme.btnOffColor
            btnAutoId.color=theme.btnOnColor
            btnOnId.color=theme.btnOffColor
            break;

        }
    }
}

