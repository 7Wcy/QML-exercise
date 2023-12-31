import QtQuick
import QtQuick.Window

Rectangle {
    width: 150
    height: 300

//    gradient:Gradient{
//        GradientStop{position: 0.0;color:"#f6f6f6"}
//        GradientStop{position: 1.0;color:"#d7d7d7"}
//    }

    ListView{
        anchors.fill: parent
        anchors.margins: 20
        focus: true
        clip: true
        spacing: 5
        model:100
        delegate: numberDelegate
    }

    Component{
        id: numberDelegate
        Rectangle{

            required property int index
            width: ListView.view.width
            height: 60
            color:ListView.isCurrentItem?'lightblue':'lightgreen'

            border.color: Qt.lighter('lightblue',0.9)

            id: wrapper
            Text {
                anchors.centerIn: parent
                id: text
                font.pixelSize: 12
                text: wrapper.index
            }
        }
    }

}
