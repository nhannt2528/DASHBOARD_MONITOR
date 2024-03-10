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
            color: theme.widgetBackgroundColor
        MenuBar{
            id:menuBarId
        }
        TopBar{
            id:topBarId
            anchors.left: menuBarId.right
            anchors.leftMargin: 10
            anchors.top: menuBarId.top
            anchors.topMargin: 10
        }

    }

}
