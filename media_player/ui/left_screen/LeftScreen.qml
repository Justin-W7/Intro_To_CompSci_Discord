import QtQuick
import QtQuick.Controls
import Qt.labs.folderlistmodel

Rectangle {
    id: left_screen
    color: "#f2f2f7"
    anchors {
        top: parent.top
        left: parent.left
        right: right_screen.left
        bottom: control_bar.top
    }

    // Sets the folder to be used in the ScrollView
    FolderListModel {
        id: system_file_view
        folder: "file:///Users/justin/Music/1_Music Library/Nils Frahm/Spaces"
        nameFilters: ["*.mp3", "*.wav"]
        showDirs: false
    }

    ScrollView {
        anchors.fill: parent

        ListView {
            id: file_list_view
            model: system_file_view
            interactive: true
            clip: true

            delegate: Item {
                width: ListView.view.width
                height: 20

                Text {
                    anchors.verticalCenter: parent.verticalCenter
                    text: fileName
                    font.pointSize: 12
                    padding: 10
                }
            }

            width: parent.width
            height: parent.height
        }
    }
}

