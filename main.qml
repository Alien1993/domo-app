import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    id: root
    visible: true
    width: 640
    height: 480
    title: qsTr("Domo")

    property bool connected: false

    Pane {
        id: pane

        anchors.fill: parent

        ColumnLayout {
            anchors.centerIn: parent

            ColumnLayout {
                anchors.horizontalCenter: parent.horizontalCenter

                RowLayout {
                    TextField {
                        id: hostNameField
                        font.pixelSize: 25
                        placeholderText: qsTr("IP")
                    }
                    TextField {
                        id: hostPortField
                        font.pixelSize: 25
                        placeholderText: qsTr("Port")
                    }
                }
                Button {
                    id: connectButton
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Connect"

                    onClicked: root.connected = Client.connect(hostNameField.text, hostPortField.text)
                }
            }

            ColumnLayout {
                anchors.horizontalCenter: parent.horizontalCenter

                TextField {
                    id: commandField
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 25
                    placeholderText: qsTr("Command")
                }

                Button {
                    id: sendButton
                    anchors.horizontalCenter: parent.horizontalCenter
                    enabled: root.connected
                    font.pixelSize: 25
                    text: qsTr("Send")

                    onClicked: console.log("sendData:", Client.sendData(commandField.text));
                }
            }
        }
    }
}
