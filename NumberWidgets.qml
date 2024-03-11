import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQml 2.15

Item {
    width: 175

    Rectangle{
        anchors.fill: parent
        color: theme.backgroundColor
        radius: 10
    }
    Label{
        text: "42"
        font.pixelSize: 45
        anchors.centerIn: parent
        color: "White"

    }
}
