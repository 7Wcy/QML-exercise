import QtQuick 2.0

Item {
    Rectangle{
        id:button1
        x:180
        y:40
        width: 40
        height: 40
        radius: 10
        border.color: "black"
        border.width: 2
        Text {

            anchors.centerIn: parent
            id: button1text
            text: qsTr("按钮1")

        }
        MouseArea{
            anchors.fill: parent
            onClicked: wheel1.rotation +=10
        }
    }

}
