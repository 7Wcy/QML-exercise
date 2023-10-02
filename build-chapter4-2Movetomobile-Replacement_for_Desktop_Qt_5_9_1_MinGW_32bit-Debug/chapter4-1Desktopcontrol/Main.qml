import QtQuick
import QtQuick.Controls
import Qt.labs.platform as Platform
import QtQuick.Controls.Material


ApplicationWindow {
    width: 320
    height: 480
    visible: true
    title: qsTr("Hello World")

    background: Rectangle{
        color: "darkGray"
    }

    Image {
        id: image
        //source: "images/qq.png"
        anchors.fill: parent
        //不希望改变比例
        fillMode: image.PreserveAspectFit
        //这个属性用于指示图片加载是否应该以异步方式进行,避免卡顿
        asynchronous: true
    }

//    header: ToolBar{
//        Flow{
//            anchors.fill: parent
//            ToolButton{
//                text:"打开"
//                //icon.source: "images/open.png"
//                onClicked: fileOPenDialog.open()
//            }
//        }
//    }

    header: ToolBar{
        Material.background: Material.Orange
        ToolButton{
            icon.source: "images/much.svg"
            onClicked: drawer.open()
        }
        Label{
            anchors.centerIn: parent
            text:"Image Viewer"
            font.pixelSize: 20
        }
    }

    Platform.FileDialog{

        id:fileOPenDialog
        title:"选择图片"
        nameFilters: [
            "Images files(*.png *.jpg)", "all files(*.*)"
        ]

        onAccepted: {
            image.source=fileOPenDialog.file
        }
    }

    Drawer {
        id: drawer
        width: parent.width / 3 * 2
        height: parent.height

        ListView{
            anchors.fill:parent
            model: ListModel{

                ListElement{
                    text:"open..."
                    triggered:function(){fileOPenDialog.open()}
                }
                ListElement{
                    text:"about..."
                    triggered:function(){aboutDialog.open()}
                }
            }
            delegate: ItemDelegate{
                text: model.text
//                highlighted: ListView.isCurrentItem
                onClicked: {
                    drawer.close()
                    model.triggered()}
            }
        }


    }

    Dialog{
        id:aboutDialog
        width:300
        height: 150
        anchors.centerIn: parent
        title: "About"
        Label{
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
        }
        standardButtons: Platform.StandardButton.Ok
    }

}
