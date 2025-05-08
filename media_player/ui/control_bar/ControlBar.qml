import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs
import QtMultimedia


Rectangle {
    id: control_bar
    color: "#f2f2f7"
    anchors {
        left: parent.left
        right: parent.right
        bottom: parent.bottom
    }
    height: parent.height / 8

    // PLAY BUTTON
    Item {
        id: play_button
        anchors.centerIn: parent
        height: parent.height * 0.75
        width: parent.width * 0.3

        Image {
            source: "qrc:/ui/assets/play-button.png"
            anchors.centerIn: parent
            height: parent.height * 0.85
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            anchors.fill: parent

            onPressed: {
                play_button.opacity = 0.7
            }

            onReleased: {
                play_button.opacity = 1
            }

            onClicked: ButtonFunc.play_button_click()
        }
    }

    // BACK BUTTON
    Item {
        id: back_button
        anchors {
            verticalCenter: parent.verticalCenter
            left: parent.left
        }
        height: parent.height * 0.75
        width: parent.width * 0.3

        Image {
            source: "qrc:/ui/assets/back-button.png"
            anchors.centerIn: parent
            height: parent.height * .85
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            anchors.fill: parent

            onPressed: {
                back_button.opacity = 0.7
            }

            onReleased: {
                back_button.opacity = 1
            }

            onClicked: ButtonFunc.back_button_click()
        }
    }

    // NEXT BUTTON
    Item {
        id: next_button
        anchors {
            verticalCenter: parent.verticalCenter
            right: parent.right
        }
        height: parent.height * 0.75
        width: parent.width * 0.3

        Image {
            source: "qrc:/ui/assets/next-button.png"
            anchors.centerIn: parent
            height: parent.height * 0.85
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            anchors.fill: parent

            onPressed: {
                next_button.opacity = 0.7
            }

            onReleased: {
                next_button.opacity = 1
            }

            onClicked: ButtonFunc.next_button_click()
        }
    }
}
