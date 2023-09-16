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


            Timer {

                interval: 150  // 定时器间隔，控制旋转速度

                repeat: true
                running: mouseArea.containsMouse // 只有在鼠标在MouseArea内时才运行定时器

                onTriggered: {
//                    pinwheel.rotation += 90; // 旋转速度，可以根据需要调整
                    blur.rotation +=90;
                }
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


            Timer {

                interval: 150  // 定时器间隔，控制旋转速度

                repeat: true
                running: mouseArea.containsMouse // 只有在鼠标在MouseArea内时才运行定时器

                onTriggered: {
                    pinwheel.rotation += 90; // 旋转速度，可以根据需要调整
//                    blur.rotation +=90;
                }
            }
        }


        MouseArea {
            id: mouseArea
            anchors.fill: parent
            hoverEnabled: true
        }
    }
}
