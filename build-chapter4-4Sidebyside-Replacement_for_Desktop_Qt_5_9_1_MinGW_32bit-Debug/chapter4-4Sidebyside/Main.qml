import QtQuick
import QtQuick.Window
import QtQuick.Controls

ApplicationWindow {
    id:root
    width: 320
    height: 480
    visible: true
    title: qsTr("Style by Style")

    SwipeView{
        id: swipeView
        anchors.fill: parent
        Home{}
        About{}
        EditProfile{}
        Profile{}

    }

    PageIndicator{
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter

        //currentIndex: swipeView.currentIndex
        count:swipeView.count
    }


}
