NAME=Roombee
TARGET=/usr/share/icons

install:

	# remove previous installation
	rm -Rf ${TARGET}/${NAME}

	# copy Roombee theme
	cp -r ${NAME} ${TARGET}

.PHONY: install
