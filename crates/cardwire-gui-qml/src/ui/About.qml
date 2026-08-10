import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import org.kde.kirigami as KG

KG.Page {
    title: "About"
    ColumnLayout {
        anchors.fill: parent

        KG.AbstractCard {
            header: KG.Heading {
                text: "Cardwire"
            }

            contentItem: ColumnLayout {
                Label {
                    text: "Version %1".arg("VERSION")
                }
                Label {
                    text: "Author: luytan"
                }
                Label {
                    text: "Other contributors: SeawolfTony"
                }
                Label {
                    text: "License: GPL-3.0"
                }
                Label {
                    text: "Repository: github.com/OpenGamingCollective/cardwire"
                }
            }
        }

        Item {
            Layout.fillHeight: true
        }
    }
}
