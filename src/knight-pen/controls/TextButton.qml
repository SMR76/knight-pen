import QtQuick 2.15
import QtQuick.Controls 2.15

AbstractButton {
    id: control

    implicitWidth: contentItem.implicitWidth
    implicitHeight: contentItem.implicitHeight

    spacing: 0
    padding: 0
    hoverEnabled: true

    font.family: 'Calibri'
    font.bold: hovered

    palette.buttonText: '#444'

    contentItem: Text {
        id: text
        height: 10
        visible: control.display === AbstractButton.TextOnly ||
                 control.display === AbstractButton.TextBesideIcon;
        text:  control.text
        color: control.down ? control.palette.mid :
            control.hovered ? control.palette.dark :
                              control.palette.buttonText
        font:  control.font
        elide: Text.ElideRight
        verticalAlignment: Qt.AlignVCenter
    }

    MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        acceptedButtons: Qt.NoButton
    }
}
