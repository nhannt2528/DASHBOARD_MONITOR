import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.VirtualKeyboard 2.15
import QtQml 2.14


Window {
    id: window
    width: 1024
    height: 600
    visible: true
    title: qsTr("DASHBOARD")
//     flags: Qt.FramelessWindowHint
     color: theme.backgroundColor
    HomePage{
        id:homeId
    }

    //   Rectangle{
    //       id:recWindows
    //       width: parent.width
    //       height: parent.height

    //}

    //    InputPanel {
    //        id: inputPanel
    //        z: 99
    //        x: 0
    //        y: window.height
    //        width: window.width

    //        states: State {
    //            name: "visible"
    //            when: inputPanel.active
    //            PropertyChanges {
    //                target: inputPanel
    //                y: window.height - inputPanel.height
    //            }
    //        }
    //        transitions: Transition {
    //            from: ""
    //            to: "visible"
    //            reversible: true
    //            ParallelAnimation {
    //                NumberAnimation {
    //                    properties: "y"
    //                    duration: 250
    //                    easing.type: Easing.InOutQuad
    //                }
    //            }
    //        }
    //    }
}
