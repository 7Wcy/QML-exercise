import QtQuick 2.9
import QtQuick.Window 2.3

Window {
    id:root
    visible: true
    width: 640
    height: 480
    title: qsTr("UFO")

    property int duration: 3000

    Image {
        anchors.fill: parent
        id: background
        source: "../images/background.png"
    }

    ClickableImageV3{
        id:ufo
        y:root.height-height
        source: "../images/assets/ufo.png"
        text: "UFO"
        onClicked: {
            anim.restart()
        }
    }
    //顺序动画
//    SequentialAnimation{
//        id:anim
//        NumberAnimation{
//            target: ufo
//            properties: "y"
//            from:root.height-ufo.height
//            to:20
//            duration: root.duration
//        }
//        NumberAnimation{
//            target: ufo
//            properties: "x"
//            from:20
//            to:root.width-ufo.width
//            duration: root.duration
//        }
//    }
    //并行动画
    ParallelAnimation{
        id:anim
        NumberAnimation{
            target: ufo
            properties: "y"
            from:root.height-ufo.height
            to:20
            duration: root.duration
        }
        NumberAnimation{
            target: ufo
            properties: "x"
            from:20
            to:root.width-ufo.width
            duration: root.duration
        }
    }

}
