import QtQuick
import QtQuick.Controls as Controls
import QtQuick.Layouts

Controls.ComboBox{
    id: combobox
    Layout.minimumWidth: 270
    Layout.preferredWidth: 350
    Layout.maximumWidth:  0.3 * root.width

    model: choices

    property var choices: []

    signal choiceClicked(int index);

    onActivated: function(index) {
        choiceClicked(index);
    }
}
