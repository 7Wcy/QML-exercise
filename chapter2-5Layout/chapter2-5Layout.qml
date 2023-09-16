import QtQuick 2.8
import QtQuick.Window 2.2

Window {
    id: root
    visible: true
    width: 252
    height: 252
    title: qsTr("Hello World")

    property variant colorArray: ["#00bde3","#67c111","#ea7025"]

    Grid{
        anchors.fill: parent
        anchors.margins: 8
        spacing: 4
        Repeater{
            model: 16
            Rectangle{
                id: rect
                property int colorindex: Math.floor(Math.random()*3)
                width: 56;height: 56
                color:root.colorArray[colorindex]
                border.color: Qt.lighter(color)
                Text {
                    anchors.centerIn: parent
                    color: "white"
                    text: "Cell" + rect.Positioner.index

                }

            }
        }
    }

}
