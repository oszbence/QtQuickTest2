import QtQuick 2.0

Screen {

    // Let subtypes see buttons defined here
    property alias volUpButton: volUpButton
    property alias volDownButton: volDownButton
    property alias prevButton: prevButton
    property alias nextButton: nextButton

    GhettoButton {
        id: volUpButton
        text: qsTr("Vol++")
        anchors.right: parent.right
        anchors.top: parent.top
    }

    GhettoButton {
        id: volDownButton
        text: qsTr("Vol--")
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
    }

    GhettoButton {
        id: prevButton
        text: qsTr("Prev")
        anchors.left: parent.left
        anchors.bottom: parent.bottom
    }

    GhettoButton {
        id: nextButton
        text: qsTr("Next")
        anchors.right: parent.right
        anchors.bottom: parent.bottom
    }
}
