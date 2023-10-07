import QtQuick
import QtQuick.Window
import "../common"

Window {

    width: 150
    height: 300

    visible: true

    ListView{
        id:lv
        anchors.fill: parent
        anchors.margins: 20
        clip: true
        model:100

//        layoutDirection: "RightToLeft"
//        orientation: ListView.Horizontal

        delegate: Item{
            id:wrapper
            required property int index
            width: lv.width
            height: 40
            Text {
                anchors.centerIn: parent
                text:wrapper.index
            }

            Component.onCompleted: {console.log(index+"added")}
            Component.onDestruction: {console.log(index+"deleted")}

        }

        highlight: highlightComponent
        focus: true

        cacheBuffer: 80
        spacing: 5
    }

    Component{
        id:highlightComponent

        GreenBox{
            id:gb
            width: lv.width
            y:lv.currentItem.y
            Behavior on y{
                SequentialAnimation{
                    PropertyAnimation{target: gb;property: "opacity";to:0;duration: 200}
                    NumberAnimation{duration: 150}
                    PropertyAnimation{target: gb;property: "opacity";to:1;duration: 200}
                }
            }
        }
    }

}
