import QtQuick 2.8
import QtQuick.Window 2.2

Window {
    id:root
    visible: true
    width: 240
    height: 280
    title: qsTr("Hello World")

//    Column{
//        id: column
//        anchors.centerIn: parent
//        spacing: 10

//        GreenRect{

//        }

//        RedRect{

//        }

//        BlackRect{

//        }

//        BlueRect{

//        }

//    }
//    Row{
//        id: column
//        anchors.centerIn: parent
//        spacing: 10

//        GreenRect{

//        }

//        RedRect{

//        }

//        BlackRect{

//        }

//        BlueRect{

//        }

//    }

    Flow{
        id: column
        anchors.fill: parent
        anchors.margins: 20
        spacing: 10

        GreenRect{

        }

        RedRect{

        }

        BlackRect{

        }

        BlueRect{

        }
    }
//    Grid{
//        id: column
//        anchors.centerIn: parent
//        spacing: 10

//        rows:3
//        columns: 3

//        GreenRect{

//        }
//        BlueRect{

//        }
//        RedRect{

//        }
//        BlueRect{

//        }
//        BlackRect{

//        }
//        RedRect{

//        }
//        GreenRect{

//        }
//        BlueRect{

//        }
//    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            console.log(qsTr('Clicked on background. Text: "' + textEdit.text + '"'))
        }
    }

}
