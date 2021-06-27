# PyQt and PyQtWebEngine

Version 5 of PyQt and PyQtWebEngine Python binding as Flatpak shared modules.

## Details

These modules require the KDE 5.15 runtime. The PyQtWebEngine module also depends on the [QtWebEngine base app](https://github.com/flathub/io.qt.qtwebengine.BaseApp/).

Both already include the following modules that will be packaged with your app:

* dbus-python
* freeglut
* python-opengl
* python-packaging
* python-pyparsing
* python-toml

## Usage examples

### Example: PyQt5 app

```
  app-id: org.flathub.PyQtApp
  runtime: org.kde.Platform
  runtime-version: '5.15'
  sdk: org.kde.Sdk
  modules:
    - name: app
      modules:
        - shared-modules/pyqt/pyqt5.json
```

### Example: PyQt5WebEngine app

```
  app-id: org.flathub.PyQtWebEngineApp
  runtime: org.kde.Platform
  runtime-version: '5.15'
  sdk: org.kde.Sdk
  base: io.qt.qtwebengine.BaseApp
  base-version: '5.15'
  finish-args:
    - --env=QTWEBENGINEPROCESS_PATH=/app/bin/QtWebEngineProcess
  cleanup-commands:
    - /app/cleanup-BaseApp.sh
  modules:
    - name: app
      build-options:
        env:
          - QTWEBENGINEPROCESS_PATH=/app/bin/QtWebEngineProcess
      modules:
        - shared-modules/pyqt/pyqt5-webengine.json
```
