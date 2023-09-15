import QtQuick 2.9
import QtQuick.Window 2.3

Rectangle {
    id:root
    visible: true
    width: 550
    height: 500
    property int spacetimes: 0

    Keys.onSpacePressed: {
        increment();
    }
    function increment(){
        spacetimes += 1;
    }

    Text {
        id: space
        text: spacetimes
        x:label.x+110
        y:200
        font.family: "Ubuntu"
        font.pixelSize: 40

        KeyNavigation.tab: label
        focus: false
        color: focus? "red" : "black";

        onTextChanged: console.log("当前数字：" + spacetimes)
    }

    Text {
        id: label
        text: "times"
        x:100
        y:200
        font.family: "Ubuntu"
        font.pixelSize: 40
        KeyNavigation.tab: space
        focus: true
        color: focus?"red":"black"
    }

}
