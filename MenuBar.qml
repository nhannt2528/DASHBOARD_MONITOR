import QtQuick 2.15
import QtQuick.Controls 2.15
Item {
    width: 80
    height: parent.height
    Rectangle{
        anchors.fill: parent
        opacity: 0
//        color:theme.widgetBackgroundColor
        Column{
            anchors.fill: parent
             anchors.topMargin: 20
            Image {
                id: btnHome
                source: "qrc:/icon/Home.png"
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }
}
