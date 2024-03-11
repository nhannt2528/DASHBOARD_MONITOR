import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQml 2.15
import "qrc:/components"
Item {
    width: 175
    height: 250
    Rectangle{
        anchors.fill: parent
        color: theme.backgroundColor
        radius: 10
    }
    Column{
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.fill: parent
        spacing: 15
        StatusDevice{
            device_name: "Đèn"
            device_status: true
        }
        StatusDevice{
            device_name: "Bơm"
            device_status: true
        }
        StatusDevice{
            device_name: "Khuấy"
            device_status: true
        }
        StatusDevice{
            device_name: "Tưới"
            device_status: true
        }
        StatusDevice{
            device_name: "CO2"
            device_status: true
        }
        StatusDevice{
            device_name: "Xả"
            device_status: true
        }
        StatusDevice{
            device_name: "RO"
            device_status: true
        }



     }
}
