#!/usr/bin/env bash
#
# Install JMRI AppleScript Support for JMRI versions 4.5.2 or newer on macOS.

LIB=${HOME}/Library/Application\ Support/JMRI/lib
PREFS=${HOME}/Library/Preferences/JMRI
mkdir -p "${LIB}"
cd "${LIB}"
curl -O https://github.com/rhwood/applescript/releases/download/v1.0/applescript-1.0.jar
cd "${PREFS}"
if [ ! -f "${PREFS}/jmri.conf" ] ; then
    # download to avoid having to find a correct JMRI installation
    curl -O https://raw.githubusercontent.com/JMRI/JMRI/master/jmri.conf
fi
if ! grep "^default_options" "${PREFS}/jmri.conf" | grep applescript-1.0.jar ; then
    sed -i'' -e '/^default_options/s|"$| --cp:a=~/Library/Application\\ Support/JMRI/lib/applescript-1.0.jar"|' "${PREFS}/jmri.conf"
fi
sed -i'' -e 's/^default_options=" /default_options="/' "${PREFS}/jmri.conf"
