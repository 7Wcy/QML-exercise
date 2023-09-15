import QtQuick 2.0

Item {

    id:root

    Rectangle{
        id:button0
        x:40;y:40;
        width: 40
        height: 40
        color: "lightsteelblue"
        radius: 20
        Text {
            anchors.centerIn: parent
            id: button0text
            text: qsTr("按钮0")
        }
        MouseArea{
            anchors.fill: parent
            onClicked: wheel0.x += 10
        }
    }

}
