import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2
import QtQuick.Controls.Styles 1.4

Button {
    id: ghettoButton
    width: 60
    height: 60
    anchors.margins: 5

    style: ButtonStyle {
            background: Rectangle {
                color: colors.keyColor
            }
            label: Text {
                wrapMode: Text.WordWrap
                // Delegate text property to show texts set to button
                text: ghettoButton.text
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 10
                font.bold: true
                color: "#FFFFFF"
            }
        }
}
