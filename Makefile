SOURCE=Roombee
TARGET=/usr/share/icons/Roombee

install:
	sudo rm -Rf ${TARGET}
	sudo mkdir -p ${TARGET}
	sudo cp -r ${SOURCE}/. ${TARGET}

.PHONY: install
