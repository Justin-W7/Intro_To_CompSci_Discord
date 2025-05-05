import QtQuick

Rectangle {
    id: right_screen
    color: "#e5e5ea"
    anchors {
        top: parent.top
        right: parent.right
        bottom: control_bar.top
    }
    width: parent.width * 2/3
}
