import QtQuick 2.9
import QtQuick.Window 2.3

Image {
    id: root
    source: "../images/background.png"
    width: 1400
    property int padding: 20
    property bool running: false
    Image {
        id: qq
        source: "../images/qq.png"
        x:root.padding;y:(root.height-height)/2

//        PropertyAnimation on x{
//            to:root.width-qq.width

//            duration: 2000
//            running: root.running
//        }

//        PropertyAnimation on rotation{
//            to:360

//            duration: 2000
//            running: root.running
//        }
//        PropertyAnimation on opacity{
//            to:0

//            duration: 2000
//            running: root.running
//        }

        NumberAnimation on x{
            to:root.width-qq.width

            duration: 2000
            running: root.running
        }

        RotationAnimation on rotation{
            to:360

            duration: 2000
            running: root.running
        }
        NumberAnimation on opacity{


            to:0
            duration: 2000
            running: root.running
        }
//        OpacityAnimator on opacity {

//            to:0
//            duration: 2000
//            running: root.running


//        }

    }


    MouseArea{
        anchors.fill: parent
        onClicked: root.running = true
    }



}
