// qmllint disable unqualified

import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls

import Tire 1.0
import "../components"

Rectangle {
    id: addPrimitivesPopupComponent

    readonly property var _fonts: Appearence.fonts
    readonly property var _gaps: Appearence.gaps
    readonly property var _radius: Appearence.radius
    readonly property var _color: Appearence.colors

    height: addItemsButtonsLayout.implicitHeight

    radius: _radius.quarter
    color: _color.background_overlay_60

    ColumnLayout {
        id: addItemsButtonsLayout
        spacing: 0

        anchors {
            top: parent.top
            left: parent.left
            right: parent.right
        }

        readonly property int itemsHeight: 32

        NpContextMenuButton {
            id: addSphereButton
            Layout.fillWidth: true
            Layout.preferredHeight: addItemsButtonsLayout.itemsHeight
            text: "Box"
            enabled: true

            topLeftRadius: _radius.quarter
            topRightRadius: _radius.quarter

            font: _fonts.label_accent
        }

        NpContextMenuButton {
            id: addBoxButton
            Layout.fillWidth: true
            Layout.preferredHeight: addItemsButtonsLayout.itemsHeight
            text: "Sphere"
            enabled: false

            font: _fonts.label_accent
        }

        NpContextMenuButton {
            id: addCylinderButton
            Layout.fillWidth: true
            Layout.preferredHeight: addItemsButtonsLayout.itemsHeight
            text: "Cylinder"
            enabled: false

            font: _fonts.label_accent
        }

        NpContextMenuButton {
            id: addCapsuleButton
            Layout.fillWidth: true
            Layout.preferredHeight: addItemsButtonsLayout.itemsHeight
            text: "Capsule"
            enabled: false

            font: _fonts.label_accent
        }

        NpContextMenuButton {
            id: addFromFileButton
            Layout.fillWidth: true
            Layout.preferredHeight: addItemsButtonsLayout.itemsHeight
            text: "From file"
            enabled: true

            font: _fonts.label_accent
        }

        NpContextMenuButton {
            id: addImplicitButton
            Layout.fillWidth: true
            Layout.preferredHeight: addItemsButtonsLayout.itemsHeight

            text: "Implicit surface"
            icon.source: "image://TiredImageProvider/star-alt-3-svgrepo-com.svg"

            enabled: false

            font: _fonts.label_accent
        }

        NpContextMenuButton {
            id: addBezierSurfaceButton
            Layout.fillWidth: true
            Layout.preferredHeight: addItemsButtonsLayout.itemsHeight
            text: "Bezier surface"
            enabled: false

            font: _fonts.label_accent
        }

        NpContextMenuButton {
            id: addLandscapeButton
            Layout.fillWidth: true
            Layout.preferredHeight: addItemsButtonsLayout.itemsHeight
            text: "Landscape"
            enabled: false

            font: _fonts.label_accent
        }

        NpContextMenuButton {
            id: addPolytopeButton
            Layout.fillWidth: true
            Layout.preferredHeight: addItemsButtonsLayout.itemsHeight
            text: "Polytope"
            enabled: false

            font: _fonts.label_accent

            bottomLeftRadius: _radius.quarter
            bottomRightRadius: _radius.quarter
        }
    }
}
