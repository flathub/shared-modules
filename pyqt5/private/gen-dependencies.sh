#!/bin/bash
pip_generator="$PWD/flatpak-builder-tools/pip/flatpak-pip-generator"
${pip_generator} --cleanup all 'PyQt-builder>=1.9,<2' --output pyqt-builder
${pip_generator} PyQt5-sip --output pyqt5-sip

sed -i -E 's:(FLATPAK_DEST.):\1/build-pyqt5:g' pyqt-builder.json
