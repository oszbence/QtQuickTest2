import QtQuick 2.0
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

Rectangle {
    anchors.fill: parent

    property alias storageButton: storageButton
    property alias playerButton: playerButton
    property alias bluetoothButton: bluetoothButton
    property alias themeSwitcherButton: themeSwitcherButton

    TitleText {
        text: qsTr("Vizigetto")
    }

    RowLayout {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: 20

        MenuButton {
            id: storageButton
            text: qsTr("MASS\nSTORAGE")
        }

        MenuButton {
            id: playerButton
            text: qsTr("MEDIA\nPLAYER")
        }

        MenuButton {
            id: bluetoothButton
            text: qsTr("BLUETOOTH\nMODE")
        }
    }

    GhettoButton {
        id: themeSwitcherButton
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        width: 90
    }
}
