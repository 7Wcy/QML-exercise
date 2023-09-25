import QtQuick
import QtQuick.Window

Item {
    id: root
    width: 150;
    height: 260
    property color black: "black"
    property color green: "green"
    property color red: "red"
    Rectangle{
        anchors.fill: parent
        color: "#333333"
    }

    state: "stop"

    states: [
        State {
            name: "stop"
            PropertyChanges {target: light1;color:root.red}
            PropertyChanges {target: light2;color:root.black}
        },

        State {
            name: "go"
            PropertyChanges {target: light1;color:root.black}
            PropertyChanges {target: light2;color:root.green}
        }
    ]

    transitions: [
        Transition {
            from: "*"
            to: "*"

            ColorAnimation {
                target: light1;
                properties: "color"
                duration: 1000
            }
            ColorAnimation {
                target: light2;
                properties: "color"
                duration: 1000
            }
//            ColorAnimation {
//                duration: 1000
//            }
        }
    ]

    Rectangle{
        id:light1
        width: 100;
        height: 100
        x:25
        y:15
        color: root.black
        radius: width/2
        border.color: Qt.lighter(root.black, 1, 1)


    }
    Rectangle{
        id:light2
        width: 100;
        height: 100
        x:25
        y:135
        color: root.black
        radius: width/2
        border.color: Qt.lighter(root.black, 1, 1)

    }
    MouseArea{
        anchors.fill: parent
        onClicked: root.state=(root.state=="stop" ? "go" : "stop")
    }

}
