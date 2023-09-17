import QtQuick
import QtQuick.Window

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    RectInput{
        id:input1
        text: "Text input 1"
        input.font.pixelSize: 16
        height: input.font.pixelSize+10
        input.color: "white"
        focus: true
        KeyNavigation.tab: input2
    }

    RectInput{
        id:input2
        text: "Text input 1"
        input.font.pixelSize: 16
        height: input.font.pixelSize+10
        y:input1.y+input1.height+12
        input.color: "white"
        focus: true
        KeyNavigation.tab: input1
    }
}


