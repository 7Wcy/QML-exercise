import QtQuick
import QtQuick.Controls
import Qt.labs.platform as Platform

ApplicationWindow {
    width: 640
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

    header: ToolBar{
        Flow{
            anchors.fill: parent
            ToolButton{
                text:"打开"
                //icon.source: "images/open.png"
                onClicked: fileOPenDialog.open()
            }
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

    menuBar: MenuBar{
        Menu{
            title:"&File"
            MenuItem{
                text: "&Open..."
                icon.source: "images/open.png"
                onTriggered: fileOPenDialog.open()
            }
        }
        Menu{
            title:"&Help"
            MenuItem{
                text: "&About..."
                onTriggered: aboutDialog.open()
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
