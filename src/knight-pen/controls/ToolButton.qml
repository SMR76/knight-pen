import QtQuick 2.15
import QtQuick.Controls 2.15 as QQC

QQC.ToolButton {
    id: control
    implicitWidth: Math.max(implicitBackgroundWidth + leftInset + rightInset,
                            implicitContentWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(implicitBackgroundHeight + topInset + bottomInset,
                             implicitContentHeight + topPadding + bottomPadding)

    property alias tooltipText: tooltip.text
    property color color: '#343536'

    width: 28
    height: width

    padding: 0
    spacing: 6
    hoverEnabled: true

    palette {
        button: '#f1f1f1'
        highlight: '#007bff'
        buttonText:  !enabled ? Qt.rgba(color.r, color.g, color.b, 0.4) :
              control.checked ? '#fff' : color
    }

    font.family: KnightPen.iconFont.family
    font.pixelSize: width * 0.53

    background: Rectangle {
        color: control.checked ? control.palette.highlight :
               control.hovered ? control.palette.midlight :
                                 control.palette.button
    }

    onPressed: tooltip.terminate();

    /// TODO: performance issue on tooltip activation.
    WToolTip {
        id: tooltip
        delay: 1000
        timeout: 2500
        visible: control.hovered
        anchors.right: parent.right
    }
}
