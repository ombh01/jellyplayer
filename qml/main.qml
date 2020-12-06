 import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls.Material 2.0
import QtQuick.Controls 2.15
import "controls/"

Window {
    width: 1024
    height: 768
    visible: true
    color: "#00000000"
    title: qsTr("Hello World")

    Rectangle {
        id: background
        border.color: "#191929"
        border.width: 1
        anchors.fill: parent
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#2f4e5d"
            }

            GradientStop {
                position: 1
                color: "#191929"
            }
        }

        Rectangle {
            id: appContainer
            color: "#00ffffff"
            anchors.fill: parent
            anchors.rightMargin: 1
            anchors.leftMargin: 1
            anchors.bottomMargin: 1
            anchors.topMargin: 1

            Rectangle {
                id: sideBar
                width: 80
                color: "#1f212a"
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.topMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0


                IconButton {
                    id: toggleBtn
                    width: 80
                    anchors.left: parent.left
                    anchors.top: parent.top
                    btnIconSource: "../images/svg/profile.svg"
                    anchors.leftMargin: 1
                    anchors.topMargin: 0
                }
            }

            Rectangle {
                id: content
                color: "#00000000"
                anchors.left: sideBar.right
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 0
                anchors.topMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
            }
        }
    }
}
