import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 500
    height: 300
    title: qsTr("Hello World")

    Image {
        anchors.fill: parent
        id: background
        source: "../images/background.png"

        Image {
            id: pole
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            source: "../images/pole.png"
        }

        Image {
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

            id: blur
            source: "../imagesur.png"
            Behavior on rotation {
                NumberAnimation {
                    duration: 200
                }
            }
            TimerEvent{

            }
        }
        Image {
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            id: pinwheel
            source: "../images/pinwheel.png"
            Behavior on rotation {
                NumberAnimation {
                    duration: 200
                }
            }
            TimerEvent{

            }
        }


        MouseArea {
            id: mouseArea
            anchors.fill: parent
            hoverEnabled: true
        }
    }
}
