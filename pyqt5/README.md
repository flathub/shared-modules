## pyqt5.yml

- This module will build and install two python packages to `${FLATPAK_DEST}`:  

```text
PyQt5-sip
PyQt5
```

- Support setting specific compile options  

  Like `--enable|disable QtGui`  
  Here are other [modules](https://doc.qt.io/qtforpython/modules.html) and other [options](https://www.riverbankcomputing.com/static/Docs/PyQt5/installation.html#building-and-installing-from-source)

  `confirm-license` and `no-dbus-python` are hard-coded

- This module will create `${FLATPAK_DEST}/build-pyqt5` and delete this folder during cleanup phase

### example

```yaml
app-id: org.flathub.app
runtime: org.kde.Platform
runtime-version: '5.15-21.08'
sdk: org.kde.Sdk
#...

# only global build-options can pass env to modules
# so put the opts here
build-options:
  env:
    PYQT5_OPTS: >-
      --no-designer-plugin
      --no-qml-plugin
      --no-tools
      --enable QtCore
      --enable QtGui
      --enable QtNetwork
      --enable QtWidgets

modules:
  - shared-modules/pyqt5/pyqt5.yml
  
  - name: app
    #...
```



