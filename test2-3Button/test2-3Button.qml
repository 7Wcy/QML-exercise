import QtQuick 2.9
import QtQuick.Window 2.3

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    
    MouseArea{
        anchors.fill: parent
        onClicked: {
            wheel0.x = 40
            wheel1.rotation = 0
            wheel2.rotation = 0
            wheel2.scale = 1
        }
    }

    Button0{

    }
    Button1{

    }

    Button2{

    }

    Image {
        id: wheel0
        source: "../images/pinwheel.png"
        x:60;y:200
        width: 40
        height: 40
    }

    Image {
        id: wheel1
        source: "../images/pinwheel.png"
        x:220;y:200
        width: 40
        height: 40
    }

    Image {
        id: wheel2
        source: "../images/pinwheel.png"
        x:420;y:200
        width: 40
        height: 40
    }



}
