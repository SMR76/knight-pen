# <img src="extera/icon-font/svg/e006-knight_pen.svg" width="22px"></img> Knight Pen 
<img src="https://img.shields.io/badge/version-0.2.0-37c248"><br>

An easy-to-use screen annotation program.

<div align="center">
    <img src="extera/logo/knight-pen-character_character.svg" width="400px" height="400px"> <br>
    <i><small>Knight Pen</small></i>
</div>
<br>

<!-- # Preview -->

## Building from source

**Dependencies**

`Qt >= 5.15`, `GCC >= 8.0`, `qmake >= 3.1`.

    sudo apt-get install g++ build-essential qt5-default qttools5-dev qttools5-dev-tools qtdeclarative5-dev*


**Clone repository**

    git clone --recursive https://github.com/SMR76/knight-pen.git

**‌Build**

    cd knight-pen 
    mkdir build
    cd build 
    qmake CONFIG+=release ../src/knight-pen/
    make

## TO-DO
- [ ] Add other pen & brush tools.
- [ ] Capability to move selection.
- [ ] Capability to rotate selection.
- [ ] Capability to resize selection.
- [ ] Capability to translate selection.
- [ ] Capability to intersect shapes.
- [ ] Separate the current shape drawing from all other solid shapes to improve rendering.
- [ ] Move InteractiveCanvas component to separate repository.
- [ ] Port to cmake.
- [ ] Use [traypp](https://github.com/Soundux/traypp) ([Qt BUG](https://bugreports.qt.io/browse/QTBUG-37083)).
- [ ] Fix [WToolTip](src/knight-pen/controls/WToolTip.qml) performance issue.

## Dependencies
- [Qt](https://www.qt.io/) (LGPLV3) <sub>Core & GUI</sub>
- [QNanoPainter](https://github.com/QUItCoding/qnanopainter) (zlib license) <sub>Canvas</sub>