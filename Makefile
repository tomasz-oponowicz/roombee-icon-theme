ICONS=/usr/share/icons

NAME=Roombee
SOURCE=${NAME}
TARGET=${ICONS}/${SOURCE}

ARC_THEME=${ICONS}/Arc
CUSTOM_ARC_THEME=${ARC_THEME}-${NAME}

PAPIRUS_THEME=${ICONS}/Papirus
CUSTOM_PAPIRUS_THEME=${PAPIRUS_THEME}-${NAME}

install:
	# remove previous installation
	sudo rm -Rf ${TARGET} ${CUSTOM_ARC_THEME} ${CUSTOM_PAPIRUS_THEME}

	# copy Roombee theme
	sudo cp -r ${SOURCE} ${ICONS}

	# create custom Arc theme
	sudo cp -r ${ARC_THEME} ${CUSTOM_ARC_THEME}
	sudo sed -i '/^Inherits/d' ${CUSTOM_ARC_THEME}/index.theme

	# create custom Papirus theme
	sudo cp -r ${PAPIRUS_THEME} ${CUSTOM_PAPIRUS_THEME}
	sudo sed -i '/^Inherits/d' ${CUSTOM_PAPIRUS_THEME}/index.theme
	sudo rm -Rf ${CUSTOM_PAPIRUS_THEME}/*/mimetypes

	# clear icons cache
	sudo gtk-update-icon-cache -q ${TARGET}
	sudo gtk-update-icon-cache -q ${CUSTOM_ARC_THEME}
	sudo gtk-update-icon-cache -q ${CUSTOM_PAPIRUS_THEME}

.PHONY: install
