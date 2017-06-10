import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

Text {
    font.pointSize: 24
    font.bold: false
    color: colors.titleColor
    anchors.margins: 15
    // Az egesz szovegmezo fentre es kozepre:
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: parent.top
    // Szoveg pozicioja a szovegmezon belul:
    horizontalAlignment: Text.AlignHCenter
    verticalAlignment: Text.AlignTop
}
