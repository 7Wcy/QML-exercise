import QtQuick 2.0

Rectangle{
    width: 200
    height: 200
    x:40;y:40
    color: "lightsteelblue"
    radius: 10
    property alias text: bluetext.text
    Text {
        anchors.centerIn: parent
        id: bluetext
        text: qsTr("text")
    }
}
