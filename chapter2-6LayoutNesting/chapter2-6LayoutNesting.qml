import QtQuick 2.8
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    //    RedRectangle{
    //        id:redrect
    //        BlueRectangle{
    //            text:"1"
    //            anchors.fill:parent
    //            anchors.margins: 20
    //        }
    //    }

    //    RedRectangle{
    //        id:redrect
    //        BlueRectangle{
    //            text:"2"
    //            anchors.left: parent.left
    //            anchors.margins: 20
    //        }
    //    }

    //    RedRectangle{
    //        id:redrect
    //        BlueRectangle{
    //            text:"3"
    //            anchors.top: parent.top
    //            anchors.left: parent.right
    //        }
    //    }

    //    RedRectangle{
    //        id:redrect
    //        BlueRectangle{
    //            id: blueRect1
    //            text:"4"
    //            anchors.top:parent.top
    //            anchors.horizontalCenter: parent.horizontalCenter
    //            anchors.margins: 30
    //            height: 80
    //        }
    //        BlueRectangle{
    //            text:"5"
    //            anchors.top:blueRect1.bottom
    //            anchors.topMargin: 30
    //            anchors.horizontalCenter: parent.horizontalCenter
    //            anchors.bottom: parent.bottom
    //            width: 300
    //            height: 80
    //        }
    //    }

    RedRectangle{
        id:redrect
        BlueRectangle{
            text:"5"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: -80
        }
    }

}
