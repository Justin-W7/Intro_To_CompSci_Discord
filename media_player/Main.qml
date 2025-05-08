import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtMultimedia
import "ui/control_bar"
import "ui/right_screen"
import "ui/left_screen"


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Media Player")

    RightScreen {
        id: right_screen
    }

    LeftScreen {
        id: left_screen
    }

    ControlBar {
        id: control_bar
    }
}
