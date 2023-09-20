import QtQuick 2.9
import QtQuick.Window 2.3

Rectangle{
    id:root
    //    width: childrenRect.width
    //    height: childrenRect.height
    width: 800
    height: 400
    color: "gray"
    //增加渐变色
    gradient: Gradient{
        GradientStop{position: 0.0;color:root.color}
        GradientStop{position: 1.0;color:Qt.lighter(root.color,1.5)}
    }

        Column{
            spacing: 20
            Grid{
                spacing: 20
                columns: 5


                EasingType{
                    title: "Linear"

                    easingType: Easing.Linear
                    onClicked: {
                        animation.easing.type=easingType
                        box.toggle=!box.toggle
                    }

                }
                EasingType{
                    title: "InExpo"
                    easingType: Easing.InExpo
                    onClicked: {
                        animation.easing.type=easingType
                        box.toggle=!box.toggle
                    }
                }
                EasingType{
                    title: "OutExpo"
                    easingType: Easing.OutExpo
                    onClicked: {
                        animation.easing.type=easingType
                        box.toggle=!box.toggle
                    }

                }
                EasingType{
                    title: "InOutExpo"
                    easingType: Easing.InOutExpo
                    onClicked: {
                        animation.easing.type=easingType
                        box.toggle=!box.toggle
                    }

                }
                EasingType{
                    title: "InOutCubic"
                    easingType: Easing.InOutCubic
                    onClicked: {
                        animation.easing.type=easingType
                        box.toggle=!box.toggle
                    }

                }
                EasingType{
                    title: "SineCurve"
                    easingType: Easing.SineCurve
                    onClicked: {
                        animation.easing.type=easingType
                        box.toggle=!box.toggle
                    }

                }
                EasingType{
                    title: "InOutCirc"
                    easingType: Easing.InOutCirc
                    onClicked: {
                        animation.easing.type=easingType
                        box.toggle=!box.toggle
                    }

                }
                EasingType{
                    title: "InOutElastic"
                    easingType: Easing.InOutElastic
                    onClicked: {
                        animation.easing.type=easingType
                        box.toggle=!box.toggle
                    }
                }
                EasingType{
                    title: "InOutBack"
                    easingType: Easing.InOutBack
                    onClicked: {
                        animation.easing.type=easingType
                        box.toggle=!box.toggle
                    }
                }
                EasingType{
                    title: "InOutBounce"
                    easingType: Easing.InOutBounce
                    onClicked: {
                        animation.easing.type=easingType
                        box.toggle=!box.toggle
                    }
                }


            }
        }

//    EasingType{
//        title: "Linear"
//        easingType: Easing.Linear
//        onClicked: {
//            animation.easing.type=easingType
//            box.toggle=!box.toggle
//        }
//    }

//        Rectangle{
//            height: 100
//            Layout.fillWidth:true
//            gradient: Gradient{
//                GradientStop{position: 0.0;color:"blue"}
//                GradientStop{position: 1.0;color:"green"}
//            }
            Rectangle{
                id:box
                width: 100
                height: 100
                //property bool toggle : true
                property bool toggle : true

                gradient: Gradient{
                    GradientStop{position: 0.0;color:"red"}
                    GradientStop{position: 1.0;color:"yellow"}
                }
                y:root.height-100
                x:toggle ? 0: root.width-width

                //            MouseArea{

                //                anchors.fill: box
                //                onClicked: box.toggle = false

                //            }

                Behavior on x{
                    NumberAnimation{
                        id:animation
                        duration: 1000

                    }
                }
            }
        }

//}


