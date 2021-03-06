import QtQuick 2.2
import QtQuick.Controls 1.1
import SimVis 1.0
import MySimulator 1.0

Rectangle {
    id: geometryControlRoot
    width: 320
    height: numberOfVoxels.height + geometry.height + okButton.height + 10
    color: "#ffffff"
    opacity: 0.9

    onVisibleChanged: {
        focus = visible
    }

    GroupBox {
        id: numberOfVoxels
        width: parent.width
        height: 66
        title: qsTr("Number of voxels")

        TextField {
            id: numVoxelsX
            width: 45
            height: setNumVoxels.height
            placeholderText: qsTr("nx")
            onFocusChanged: if(focus) selectAll()
            text: marchingCubes.numVoxels.x
        }

        TextField {
            id: numVoxelsY
            anchors.left: numVoxelsX.right
            width: 45
            height: setNumVoxels.height
            placeholderText: qsTr("ny")
            onFocusChanged: if(focus) selectAll()
            text: marchingCubes.numVoxels.y
        }

        TextField {
            id: numVoxelsZ
            anchors.left: numVoxelsY.right
            width: 45
            height: setNumVoxels.height
            placeholderText: qsTr("nz")
            onFocusChanged: if(focus) selectAll()
            text: marchingCubes.numVoxels.z
        }

        Button {
            id: setNumVoxels
            anchors.left: numVoxelsZ.right
            text: qsTr("Set")
            onClicked: {
                marchingCubes.numVoxels = Qt.vector3d(numVoxelsX.text, numVoxelsY.text, numVoxelsZ.text)
                geometryControlRoot.visible = false
            }
        }
    }

    GroupBox {
        id: geometry
        anchors.top: numberOfVoxels.bottom
        width: parent.width
        height: 93
        title: qsTr("Geometries")

        Button {
            id: sinus
            text: qsTr("Sinus")
            onClicked: {
                simulator.geometry = MySimulator.SINUS
                marchingCubes.threshold = 0
                marchingCubes.numVoxels = Qt.vector3d(numVoxelsX.text, numVoxelsY.text, numVoxelsZ.text)
                geometryControlRoot.visible = false
            }
        }

        Button {
            id: sphere
            anchors.left: sinus.right
            text: qsTr("Sphere")
            onClicked: {
                simulator.geometry = MySimulator.SPHERE
                marchingCubes.threshold = 3
                marchingCubes.numVoxels = Qt.vector3d(numVoxelsX.text, numVoxelsY.text, numVoxelsZ.text)
                geometryControlRoot.visible = false
            }
        }

        Button {
            id: cube
            anchors.left: sphere.right
            text: qsTr("Cube")
            onClicked: {
                simulator.geometry = MySimulator.CUBE
                marchingCubes.threshold = 3
                marchingCubes.numVoxels = Qt.vector3d(numVoxelsX.text, numVoxelsY.text, numVoxelsZ.text)
                geometryControlRoot.visible = false
            }
        }

        Button {
            id: perlin
            anchors.top: sinus.bottom
            text: qsTr("Perlin")
            onClicked: {
                simulator.geometry = MySimulator.PERLIN
                marchingCubes.threshold = 0.6
                marchingCubes.numVoxels = Qt.vector3d(numVoxelsX.text, numVoxelsY.text, numVoxelsZ.text)
                geometryControlRoot.visible = false
            }
        }
    }

    Button {
        id: okButton
        x: parent.width*0.5 - width*0.5
        anchors.top: geometry.bottom
        anchors.topMargin: 5
        text: qsTr("OK")
        onClicked: geometryControlRoot.visible = false
    }

    Keys.onPressed: {
        if(event.key === Qt.Key_Escape) {
            visible = false
        }
    }
}

