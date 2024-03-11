import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQml 2.15

Item {

    property real ec_value: 1100
    property real wwc_value:99
    width: 220
    height: 188

    onEc_valueChanged: {

    }
    onWwc_valueChanged: {

    }

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
            id:lableEcId
            text: "EC"
            font.pixelSize: 18
            anchors.left:iconIdEc.right
            anchors.leftMargin: 20
            color: "white"
        }
        Label{

            text: ec_value +" ppm"
            font.pixelSize: 18
            anchors.left: lableEcId.left
            anchors.top: lableEcId.bottom
            anchors.topMargin: 10
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
    Label{
        id:wwcLableId
        text: "WWC"
        font.pixelSize: 18
        anchors.top: recWWCId.top
        anchors.left: recWWCId.right
        anchors.leftMargin: 10
        color: "white"
    }
    Label{

        text: wwc_value +" %"
        font.pixelSize: 18
        color: "white"
        anchors.left: wwcLableId.left
        anchors.top: wwcLableId.bottom
        anchors.topMargin: 10
    }
}
