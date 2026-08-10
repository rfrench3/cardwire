import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import org.kde.kirigami as KG

KG.Page {
    id: root
    title: "Cardwire Settings"

    ColumnLayout {
        anchors.fill: parent
        KG.CardsLayout {
            maximumColumns: 1
            maximumColumnWidth: root.availableWidth
            Layout.fillWidth: true
            Layout.fillHeight: false
            KG.AbstractCard {
                contentItem: RowLayout {
                    Label {
                        text: "Mode"
                    }
                    ComboBox {
                        Layout.fillWidth: true
                        flat: true
                        model: ["Integrated", "Hybrid", "Manual", "Smart"]
                    }
                }
            }
            KG.AbstractCard {
                contentItem: RowLayout {
                    Label {
                        text: "Nvidia Experimental Block"
                    }
                    Item {
                        Layout.fillWidth: true
                    }
                    CheckBox {
                        id: nvidiaBtn
                    }
                }
                onClicked: nvidiaBtn.click()
                showClickFeedback: true
            }
            KG.AbstractCard {
                contentItem: RowLayout {
                    Label {
                        text: "Auto Apply GPU-States"
                    }
                    Item {
                        Layout.fillWidth: true
                    }
                    CheckBox {
                        id: gpuStatesBtn
                    }
                }
                onClicked: gpuStatesBtn.click()
                showClickFeedback: true
            }
            KG.AbstractCard {
                contentItem: RowLayout {
                    Label {
                        text: "Switch Mode on battery"
                    }
                    Item {
                        Layout.fillWidth: true
                    }
                    CheckBox {
                        id: batteryBtn
                    }
                }
                onClicked: batteryBtn.click()
                showClickFeedback: true
            }
        }
        Item {
            Layout.fillHeight: true
        }
    }
}
