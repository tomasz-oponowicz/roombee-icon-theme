#!/bin/sh
# imagemagick has to be installed beforehand

SOURCE=./source.svg
TARGET_DIR=~/.tor-browser-en/INSTALL/Browser/browser

rsvg-convert -w 16 -h 16 -o ${TARGET_DIR}/chrome/icons/default/default16.png ${SOURCE}
rsvg-convert -w 32 -h 32 -o ${TARGET_DIR}/chrome/icons/default/default32.png ${SOURCE}
rsvg-convert -w 128 -h 128 -o ${TARGET_DIR}/chrome/icons/default/default48.png ${SOURCE}
rsvg-convert -w 128 -h 128 -o ${TARGET_DIR}/icons/mozicon128.png ${SOURCE}