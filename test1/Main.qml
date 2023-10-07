import QtQuick
import QtQuick.Window
import QtQuick.Controls

ApplicationWindow{
    id:root
    width: 340
    height: 480
    visible: true
    title: qsTr("Hello World")


    header: ToolBar{
        id:toolbar
        ToolButton{
            id:toolbutton
            text: "\u2630"
            MouseArea{
                anchors.fill: toolbutton
                onClicked: drawr.open()
            }
        }
    }


    Drawer{
        id:drawr
        width: root.width*0.66
        height: root.height

        Column{
            anchors.fill: parent
            ItemDelegate{
                text:"Profile"

            }
            ItemDelegate{
                text:"About"
            }
        }

    }

}
