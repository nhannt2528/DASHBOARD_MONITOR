import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQml 2.14


Item {
    id:homePageId
    width: parent.width
    height: parent.height
    Rectangle{
        id:backgroundFrameId
        anchors.fill: parent
        color: theme.backgroundColor
        Rectangle{
            id:contentId
            width: 920
            height: 555
            anchors.right: parent.right
            anchors.rightMargin: 22
            anchors.top: parent.top
            anchors.topMargin: 25
            color: theme.widgetBackgroundColor
            radius: 4
            HeaderBar{
                id:headerBar
                anchors.top: contentId.top
                anchors.topMargin: 10
                anchors.left: contentId.left
                anchors.leftMargin: 16
            }
            Content{
                anchors.top:  headerBar.bottom
                anchors.topMargin: 10
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
            }
        }
        MenuBar{
            id:menubarId
            anchors.left: parent.left
        }


    }

}
