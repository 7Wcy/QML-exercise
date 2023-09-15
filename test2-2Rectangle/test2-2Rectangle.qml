import QtQuick 2.9
import QtQuick.Window 2.3

Window {
    visible: true
    width: 800
    height: 400
    title: qsTr("Hello World")

    Rectangle{
        id:rect1
        width: 200;height: 200
        x:100;y:100
        color: "lightsteelblue"
        gradient: Gradient{
            GradientStop{position: 0.0;color: "lightsteelblue"}
            GradientStop{position: 2.0;color: "yellow"}
        }
        radius: 20
    }

    Rectangle{
        id:rect2
        width: 200;height: 200
        x:500;y:100
        border.color: "lightsteelblue"
        border.width: 5
        radius: 20
    }

    MouseArea{
        anchors.fill: rect1
        onClicked: rect2.visible=!rect2.visible
    }

}
