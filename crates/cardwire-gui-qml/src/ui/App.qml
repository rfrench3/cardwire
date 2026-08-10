import QtQuick
import org.kde.kirigami as KG

KG.ApplicationWindow {
    id: root
    visible: true

    globalDrawer: KG.GlobalDrawer {
        id: drawer

        modal: false

        property string currentPage: "Main.qml"

        function goToPage(pageUrl) {
            // Only replace if we aren't already on this page
            if (currentPage !== pageUrl) {
                root.pageStack.replace(Qt.resolvedUrl(pageUrl));
                currentPage = pageUrl;
            }
        }

        actions: [
            KG.Action {
                text: "Main"
                icon.name: "arrow-right"
                onTriggered: drawer.goToPage("Main.qml")
                checked: drawer.currentPage === "Main.qml"
            },
            KG.Action {
                text: "PCI"
                icon.name: "arrow-right"
                onTriggered: drawer.goToPage("Pci.qml")
                checked: drawer.currentPage === "Pci.qml"
            },
            KG.Action {
                text: "Smart Mode"
                icon.name: "arrow-right"
                onTriggered: drawer.goToPage("SmartMode.qml")
                checked: drawer.currentPage === "SmartMode.qml"
            },
            KG.Action {
                text: "Access Logs"
                icon.name: "arrow-right"
                onTriggered: drawer.goToPage("AccessLogs.qml")
                checked: drawer.currentPage === "AccessLogs.qml"
            },
            KG.Action {
                text: "Cardwire Settings"
                icon.name: "arrow-right"
                onTriggered: drawer.goToPage("CardwireSettings.qml")
                checked: drawer.currentPage === "CardwireSettings.qml"
            },
            KG.Action {
                text: "Advanced"
                icon.name: "arrow-right"
                onTriggered: drawer.goToPage("Advanced.qml")
                checked: drawer.currentPage === "Advanced.qml"
            },
            KG.Action {
                text: "About"
                icon.name: "arrow-right"
                onTriggered: drawer.goToPage("About.qml")
                checked: drawer.currentPage === "About.qml"
            }
        ]
    }

    pageStack.initialPage: Qt.resolvedUrl(drawer.currentPage)
}
