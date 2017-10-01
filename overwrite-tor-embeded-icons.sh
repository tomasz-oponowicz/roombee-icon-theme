#!/bin/sh

# prerequisites:
# imagemagick has is installed
# papirus-icon-theme is installed

SOURCE=/usr/share/icons/Papirus/64x64/apps/tor-browser-en.svg
TARGET_DIR=~/.tor-browser-en/INSTALL/Browser/browser

rsvg-convert -w 128 -h 128 -o ${TARGET_DIR}/icons/mozicon128.png ${SOURCE}
rsvg-convert -w 16 -h 16 -o ${TARGET_DIR}/chrome/icons/default/default16.png ${SOURCE}
rsvg-convert -w 32 -h 32 -o ${TARGET_DIR}/chrome/icons/default/default32.png ${SOURCE}

# this is used to render the app icon. use bigger resolution to improve scaling.
rsvg-convert -w 128 -h 128 -o ${TARGET_DIR}/chrome/icons/default/default48.png ${SOURCE}
