import QtQuick 2.0

import "../components" as CredComponents

TextEdit {
    color: CredComponents.Style.defaultFontColor
    font.family: CredComponents.Style.fontRegular.name
    selectionColor: CredComponents.Style.dimmedFontColor
    wrapMode: Text.Wrap
    readOnly: true
    selectByMouse: true
    // Workaround for https://bugreports.qt.io/browse/QTBUG-50587
    onFocusChanged: {
        if(focus === false)
            deselect()
    }
}
