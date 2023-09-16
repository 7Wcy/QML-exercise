import QtQuick 2.6

Timer {

    interval: 150  // 定时器间隔，控制旋转速度

    repeat: true
    running: mouseArea.containsMouse // 只有在鼠标在MouseArea内时才运行定时器

    onTriggered: {
//                    pinwheel.rotation += 90; // 旋转速度，可以根据需要调整
        blur.rotation +=90;
        pinwheel.rotation +=90;
    }
}
