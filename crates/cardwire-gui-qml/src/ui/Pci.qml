import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import org.kde.kirigami as KG

KG.Page {
    title: "PCI"

    ColumnLayout {
        anchors.fill: parent

        KG.Heading {
            text: "List of PCI Devices"
        }

        KG.CardsListView {
            Layout.fillHeight: true
            Layout.fillWidth: true
            clip: true

            model: ListModel {
                ListElement {
                    name: "Phoenix Dummy Host Bridge"
                    pci: "0000:00:01.0"
                    iommuGroup: "0"
                    vendor: "Advanced Micro Devices, Inc. [AMD]"
                    driver: "N/A"
                    pciClass: "0x060000"
                    parentDevice: "N/A"
                    childDevice: "N/A"
                }
                ListElement {
                    name: "Phoenix Dummy Host Bridge"
                    pci: "0000:00:01.0"
                    iommuGroup: "0"
                    vendor: "Advanced Micro Devices, Inc. [AMD]"
                    driver: "N/A"
                    pciClass: "0x060000"
                    parentDevice: "N/A"
                    childDevice: "N/A"
                }
            }

            delegate: KG.AbstractCard {
                id: cardRoot

                required property string name
                required property string pci
                required property string iommuGroup
                required property string vendor
                required property string driver
                required property string pciClass
                required property string parentDevice
                required property string childDevice

                header: KG.Heading {
                    text: cardRoot.name
                }

                contentItem: ColumnLayout {
                    id: delegateLayout

                    Label {
                        text: "PCI: %1".arg(cardRoot.pci)
                    }
                    Label {
                        text: "IOMMU group: %1".arg(cardRoot.iommuGroup)
                    }
                    Label {
                        text: "Vendor: %1".arg(cardRoot.vendor)
                    }
                    Label {
                        text: "Driver: %1".arg(cardRoot.driver)
                    }
                    Label {
                        text: "Class: %1".arg(cardRoot.pciClass)
                    }
                    Label {
                        text: "Parent Device: %1".arg(cardRoot.parentDevice)
                    }
                    Label {
                        text: "Child Device: %1".arg(cardRoot.childDevice)
                    }
                }
            }
        }
    }
}
