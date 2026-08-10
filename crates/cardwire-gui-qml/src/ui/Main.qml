import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import org.kde.kirigami as KG

KG.Page {
    title: "Main"

    ColumnLayout {
        anchors.fill: parent

        RowLayout {
            Label {
                text: "Mode:"
            }
            ComboBox {
                model: ["Integrated", "Hybrid", "Manual", "Smart"]
            }
        }

        KG.Heading {
            text: "Connected Devices"
        }

        KG.CardsListView {
            Layout.fillHeight: true
            Layout.fillWidth: true
            clip: true

            model: ListModel {
                ListElement {
                    device: "Device 1"
                    vendor: "Vendor"
                    pci: "PCI info"
                    nodes: "Nodes info"
                    blocked: "blocked info"
                }
                ListElement {
                    device: "Device 2"
                    vendor: "Vendor"
                    pci: "PCI info"
                    nodes: "Nodes info"
                    blocked: "blocked info"
                }
                ListElement {
                    device: "Device 3"
                    vendor: "Vendor"
                    pci: "PCI info"
                    nodes: "Nodes info"
                    blocked: "blocked info"
                }
            }

            delegate: KG.AbstractCard {
                id: cardRoot
                required property string device
                required property string vendor
                required property string pci
                required property string nodes
                required property string blocked

                header: KG.Heading {
                    text: cardRoot.device
                }

                contentItem: ColumnLayout {
                    id: delegateLayout

                    Label {
                        text: "Vendor: %1".arg(cardRoot.vendor)
                    }
                    Label {
                        text: "PCI: %1".arg(cardRoot.pci)
                    }
                    Label {
                        text: "Nodes: %1".arg(cardRoot.nodes)
                    }
                    Label {
                        text: "Blocked: %1".arg(cardRoot.blocked)
                    }
                }
            }
        }
    }
}
