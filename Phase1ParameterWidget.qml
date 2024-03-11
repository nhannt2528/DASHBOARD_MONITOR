import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQml 2.15
import "qrc:/components"
Item {
    width: 692
    height: 183
    Rectangle{
        anchors.fill: parent
        color: theme.backgroundColor
        radius: 10
    }
    Label{
        id:lbPhase1Id
        text:"Phase 1"
        font.pixelSize: 25
        color: "White"
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: 30
    }

    Label{
        id:lbBatDauId
        text:"Bắt đầu"
        font.pixelSize: 20
        color: "white"
        anchors.top: lbPhase1Id.bottom
        anchors.topMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: 50

    }
    TimeInputField{
        id:timerBatDauId
        anchors.left: lbBatDauId.right
        anchors.leftMargin: 40
        anchors.verticalCenter: lbBatDauId.verticalCenter
    }
    Label{
        id:lbBatTuoiId
        text:"Tưới"
        font.pixelSize: 20
        color: "white"
        anchors.top: lbBatDauId.bottom
        anchors.topMargin: 40
        anchors.left: lbBatDauId.left

    }
    TimeInputField{
        anchors.horizontalCenter: timerBatDauId.horizontalCenter
        anchors.leftMargin: 40
        anchors.verticalCenter: lbBatTuoiId.verticalCenter
    }
}
