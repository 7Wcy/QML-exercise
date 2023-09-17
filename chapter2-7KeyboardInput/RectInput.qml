import QtQuick

//Rectangle{
//    height:40
//    width:300
//    color: "lightsteelblue"
//    x:40;y:40
//    border.color: "grey"
//    property alias text: input.text
//    property alias input: input

//    TextInput{
//        id: input
//        anchors.fill: parent
//    }
//}

FocusScope{

    height:40
    width:300

    Rectangle{
        anchors.fill: parent
        color: "lightsteelblue"
        x:40;y:40
        border.color: "grey"
    }

    property alias text: input.text
    property alias input: input

    TextInput{
        id: input
        anchors.fill: parent
        anchors.margins: 2
        focus: true
    }

}

