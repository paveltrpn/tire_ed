// qmllint disable unqualified

import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls

import Tire 1.0
import "../components"

Popup {
    id: addPrimitivesPopupComponent

    readonly property var _fonts: Appearence.fonts
    readonly property var _gaps: Appearence.gaps
    readonly property var _radius: Appearence.radius
    readonly property var _color: Appearence.colors

    height: 216

    radius: _radius.half
    color: _color.background_overlay_60

    ColumnLayout {
        id: addItemsButtonsLayout

        anchors {
            top: parent.top
            topMargin: _gaps.half
            left: parent.left
            leftMargin: _gaps.half
            right: parent.right
            rightMargin: _gaps.half
        }

        NpContextMenuButton {
            id: addSphereButton
            Layout.fillWidth: true
            Layout.preferredHeight: 24
        }

        NpContextMenuButton {
            id: addBoxButton
            Layout.fillWidth: true
            Layout.preferredHeight: 24
        }
    }
}
