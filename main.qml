import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2


ApplicationWindow {
    visible: true
    width: 320
    height: 240

    Colors {
        id: colors
        property alias colors: colors
    }

    MainScreen {
        id: mainScreen
        visible: true

        color: colors.bgColor

        // Themes
        state: "SUNSHINE"
        states: [
            State {
                name: "SUNSHINE"
                PropertyChanges {
                    target: mainScreen.themeSwitcherButton
                    text: qsTr("NIGHT")
                }
                PropertyChanges {
                    target: colors
                    keyColor: "#0d47a1"
                    bgColor: "#f5f5f5"
                    titleColor: "#B71C1C"
                }
            },
            State {
                name: "NIGHT"
                PropertyChanges {
                    target: mainScreen.themeSwitcherButton
                    text: qsTr("SUNSHINE")
                }
                PropertyChanges {
                    target: colors
                    keyColor: "#0d47a1"
                    bgColor: "#212121"
                    titleColor: "#F44336"
                }
            }
        ]
        themeSwitcherButton.onClicked: {
            if(mainScreen.state === "SUNSHINE") {
                mainScreen.state = "NIGHT"
            }
            else if(mainScreen.state === "NIGHT") {
                mainScreen.state = "SUNSHINE"
            }
        }

        // Navigation
        storageButton.onClicked: {

            mainScreen.visible = false
            storageScreen.visible = true
        }
        playerButton.onClicked: {

            mainScreen.visible = false
            mediaPlayerScreen.visible = true
        }
        bluetoothButton.onClicked: {

            mainScreen.visible = false
            bluetoothScreen.visible = true
        }
    }

    StorageScreen {
        id: storageScreen
        visible: false
        backButton.onClicked: {

            mainScreen.visible = true
            storageScreen.visible = false
        }
    }

    MediaPlayerScreen {
        id: mediaPlayerScreen
        visible: false
        backButton.onClicked: {

            mainScreen.visible = true
            mediaPlayerScreen.visible = false
        }
    }

    BluetoothScreen {
        id: bluetoothScreen
        visible: false
        backButton.onClicked: {

            mainScreen.visible = true
            bluetoothScreen.visible = false
        }
    }
}
