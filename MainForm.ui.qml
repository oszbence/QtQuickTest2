import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

Item {
    width: 320
    height: 240

    property alias button1: button1
    property alias button2: button2
    property alias button3: button3
    property alias button4: button4

    ColumnLayout {
        anchors.fill: parent
        spacing: 10

        TitleText {
            id: title
            text: qsTr("MyTitle")
        }

        MenuButton {
            id: button1
            text: qsTr("Press Me 1")
        }

        MenuButton {
            id: button2
            text: qsTr("Press Me 2")
        }

        MenuButton {
            id: button3
            text: qsTr("Press Me 3")
        }

        MenuButton {
            id: button4
            text: qsTr("Press Me 4")
        }
    }
}
