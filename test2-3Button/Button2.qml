import QtQuick 2.0

Item {

    Rectangle{

        id:button3
        x:380;y:40
        width: 40
        height: 40
        color: "red"

        Text {
            anchors.centerIn: parent
            id: button2text
            text: qsTr("按钮3")
            color: "black"
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                wheel2.rotation +=20
                wheel2.scale +=0.5
            }
        }
    }

}
