import QtQuick 2.9
import QtQuick.Window 2.3

Item {
    id:root
    visible: true
    width: 880
    height: 300
    property int duration: 3000

    Rectangle{
        id:sky
        width: parent.width
        height: 200
        gradient: Gradient{
            GradientStop{position: 0.0;color: "#0080FF"}
            GradientStop{position: 1.0;color: "#66CCFF"}
        }
    }
    Rectangle{
        id:groud
        width: parent.width
        anchors.top: sky.bottom
        anchors.bottom: root.bottom

        gradient: Gradient{
            GradientStop{position: 0.0;color: "#00FF00"}
            GradientStop{position: 1.0;color: "#00803F"}
        }
    }

    Image {
        id: ball
        source: "../images/assets/soccer_ball.png"
        scale: 0.3
        x:0
        y:root.height-ball.height

        MouseArea
        {
            anchors.fill: parent
            onClicked: {
                ball.x=0
                ball.y=root.height-ball.height
                ball.rotation=0
                anim.restart()
            }
        }

    }

    ParallelAnimation{
        id:anim
        SequentialAnimation{
            RotationAnimation{
                properties: "rotation"
                target: ball
                to:360*3
                duration: root.duration
            }
        }
        SequentialAnimation{
            NumberAnimation{
                properties: "y"
                target: ball
                to:20
                duration: root.duration*0.1
                easing.type:Easing.InOutQuad
            }
            NumberAnimation{
                properties: "y"
                target: ball
                to:root.height-ball.height
                duration: root.duration*0.4
                easing.type:Easing.OutBounce
            }
        }
        NumberAnimation{
            properties: "x"
            target: ball
            to:root.width-100
            duration: root.duration
            easing.type: Easing.Linear
            //easing.type:
        }



    }


}
