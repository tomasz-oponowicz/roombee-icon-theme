ICONS=/usr/share/icons
NAME=Roombee
SOURCE=${NAME}
TARGET=${ICONS}/${SOURCE}

install:

	# remove previous installation
	sudo rm -Rf ${TARGET}

	# copy Roombee theme
	sudo cp -r ${SOURCE} ${ICONS}

	# clear icons cache
	sudo gtk-update-icon-cache -q ${TARGET}

.PHONY: install
