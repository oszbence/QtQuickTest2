import QtQuick 2.0
import QtQuick.Controls 1.0

MediaControllerScreen {

    TitleText {
        id: titleText
        text: qsTr("Media Player")
    }

    ScrollView {

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: titleText.bottom
        anchors.topMargin: 10

        width: 180
        height: 170

        ListView {
            id: mediaListView
            anchors.fill: parent

            model: mediaListModel
            delegate: Rectangle {
                width: 180
                height: 30
                Text { text: mediaData }
            }
        }
    }
}
