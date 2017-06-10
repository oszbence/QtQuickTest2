import QtQuick 2.0

MediaControllerScreen {

    // Init state
    state: "WAITING"

    // States define what to hide from screen
    states: [
        State {
            name: "WAITING"
            PropertyChanges {
                target: stateText
                text: qsTr("Waiting for device...")
            }
            PropertyChanges {
                target: settingsButton
                visible: false
            }
            PropertyChanges {
                target: prevButton
                visible: false
            }
            PropertyChanges {
                target: nextButton
                visible: false
            }
            PropertyChanges {
                target: volUpButton
                visible: false
            }
            PropertyChanges {
                target: volDownButton
                visible: false
            }
        },
        State {
            name: "CONNECTED"
            PropertyChanges {
                target: stateText
                text: qsTr("Connected")
            }
            PropertyChanges {
                target: settingsButton
                visible: true
            }
            PropertyChanges {
                target: prevButton
                visible: true
            }
            PropertyChanges {
                target: nextButton
                visible: true
            }
            PropertyChanges {
                target: volUpButton
                visible: true
            }
            PropertyChanges {
                target: volDownButton
                visible: true
            }
        }
    ]

    TitleText {
        id: titleText
        text: qsTr("Bluetooth")
    }

    GhettoButton {
        id: settingsButton
        text: qsTr("Settings")
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
    }

    Text {
        id: stateText
        font.pointSize: 14
        font.bold: true
        color: colors.titleColor
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: okButton.top
        anchors.margins: 10
    }

    GhettoButton {
        id: okButton
        text: qsTr("OK")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        // FIXME ez nem itt lesz
        onClicked: {
            if(parent.state == "WAITING") {
                parent.state = "CONNECTED"
            }
            else if(parent.state == "CONNECTED") {
                parent.state = "WAITING"
            }
        }
    }

}
