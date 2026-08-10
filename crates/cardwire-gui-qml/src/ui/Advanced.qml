import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import org.kde.kirigami as KG
import cardwire_gui

KG.Page {
    id: root
    title: "Advanced"

    ColumnLayout {
        anchors.fill: parent
        KG.CardsLayout {
            maximumColumns: 1
            maximumColumnWidth: root.availableWidth
            Layout.fillWidth: true
            Layout.fillHeight: false
            KG.AbstractCard {
                contentItem: Label {
                    text: "Warning: These actions are for advanced users."
                }
            }
            KG.AbstractCard {
                header: KG.Heading {
                    text: "Refresh GPU List"
                }
                contentItem: RowLayout {
                    Label {
                        text: "Re-scan PCI devices and update the internal GPU list."
                    }
                }
                onClicked: Backend.say_hello()
                showClickFeedback: true
            }
        }
        Item {
            Layout.fillHeight: true
        }
    }
}
