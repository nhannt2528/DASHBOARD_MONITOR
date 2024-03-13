import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQml 2.15
import "qrc:/widgets"
Item {
width: 883
Rectangle{
    anchors.fill: parent
    opacity: 0
}
DashboardWidget{
    visible: true
}
ConfigParameterWidget{
visible: false
}




}


