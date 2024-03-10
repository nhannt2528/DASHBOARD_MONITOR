import QtQuick 2.15
import QtQuick.Controls 2.15
Item {
    width: 80
    height: parent.height
    Rectangle{
        anchors.fill: parent
        color: theme.backgroundColor
        Column{
            anchors.fill: parent
             anchors.topMargin: 50
            Image {
                id: btnHome
                source: "qrc:/icon/Home.png"
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }
}
