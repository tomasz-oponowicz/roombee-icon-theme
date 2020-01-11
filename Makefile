PREFIX ?= /usr

install:

	mkdir -p $(DESTDIR)$(PREFIX)/share/icons
	cp -R Roombee $(DESTDIR)$(PREFIX)/share/icons


.PHONY: install
