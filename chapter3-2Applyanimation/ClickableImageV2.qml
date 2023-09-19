import QtQuick 2.0

Item {
    id:root
    width: container.childrenRect.width
    height: container.childrenRect.width
    property alias text: label.text
    property alias source: image.source
    signal clicked

    Column{
        id:container
        Image {
            id: image
        }
        Text {
            id: label
            width: image.width
            wrapMode: Text.WordWrap
            horizontalAlignment: Text.AlignHCenter
            color: "#ececec"
        }
    }

    MouseArea{
        anchors.fill: parent
        onClicked: root.clicked()
    }

}
