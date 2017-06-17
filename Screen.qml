import QtQuick 2.0
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

Rectangle {
    id: screen
    anchors.fill: parent

    color: colors.bgColor

    property alias backButton: backButton

    GhettoButton {
        id: backButton
        text: qsTr("Back")
        anchors.left: parent.left
        anchors.top: parent.top
    }
}
