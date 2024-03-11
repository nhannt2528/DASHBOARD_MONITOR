import QtQuick 2.15
import QtQuick.Controls 2.15
Item {
    property string device_name: "device"
    property bool device_status:false
    anchors.left: parent.left
    anchors.right: parent.right
    height: iconId.height


Row{
    anchors.fill: parent
    spacing: 20
    Label{
        text: device_name
        font.pixelSize: 18
        color: "white"
        anchors.left:  parent.left
        anchors.leftMargin: 20
        anchors.verticalCenter: parent.verticalCenter

    }
    Image {
        // anchors.right: parent.left
        // anchors.rightMargin: 10
        id:iconId
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.verticalCenter: parent.verticalCenter
        source: device_status? "qrc:/icon/icon_state_on.png" : "qrc:/icon/icon_state_off.png"

    }
}
}
