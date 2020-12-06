import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Button {
    id: btnIcon
    implicitWidth: 60
    implicitHeight: 60

    property url btnIconSource: "../../images/svg/profile.svg"
    property color btnColor: "#b9b9b9"
    property color btnColorHover: "#ffffff"
    property color btnColorClicked: "#b9b9b9"


    QtObject{
        id: internal

        property var btnColorChange: if(btnIcon.down) {
                                        btnIcon.down ? btnColorClicked : btnColor
                                     } else {
                                        btnIcon.hovered ? btnColorHover : btnColor
                                     }
    }


    background: Rectangle{
        id: bgBtn
        color: "#00ffffff"



        Image {
            id: iconBtn
            source: btnIconSource
            mirror: false
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            height: 40
            width: 40
            fillMode: Image.PreserveAspectFit
        }

        ColorOverlay{
        anchors.fill: iconBtn
        source: iconBtn
        color: internal.btnColorChange
        antialiasing: false

        }
    }



}



/*##^##
Designer {
    D{i:0;height:60;width:80}
}
##^##*/
