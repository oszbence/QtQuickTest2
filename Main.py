#!/usr/bin/python3
# -*- coding: utf-8 -*-

# Run in QtCreator:
# 1) install
# 1.1) python 3
# 1.2) pyqt5: pip3 install pyqt5
# 1.3) setup python for QtCreator: https://stackoverflow.com/questions/24100602/developing-python-applications-in-qt-creator
# 2) run
# 2.1) Tools -> External -> Python -> RunPy

import sys
from PyQt5.QtWidgets import QApplication, QMainWindow
from PyQt5.QtCore import *
from PyQt5.QtQuick import QQuickView


if __name__ == "__main__":

    app = QApplication(sys.argv)

    view = QQuickView()
    view.setSource(QUrl('main.qml'))

    #rootObject = view.rootObject()

    sys.exit(app.exec_())
