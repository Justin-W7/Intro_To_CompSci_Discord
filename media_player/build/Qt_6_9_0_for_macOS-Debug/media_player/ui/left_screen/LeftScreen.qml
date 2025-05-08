import QtQuick
import QtQuick.Controls
import QtQuick.Layouts


Rectangle {
    id: left_screen
    color: "#f2f2f7"
    anchors.top: parent.top
    anchors.left: parent.left
    anchors.right: right_screen.left
    anchors.bottom: control_bar.top
    StackLayout {
        anchors.fill: parent

        // Shows the help text.
        Text {
            text: qsTr("This will display a file tree")
            wrapMode: TextArea.Wrap
            color: Colors.text
        }
    }

}
