# instamenu - menu from CynicalTeam
# See LICENSE file for copyright and license details.

include config.mk

clean:
	

install: all
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f instamenue_* $(DESTDIR)$(PREFIX)/bin
	mkdir -p $(DESTDIR)$(SHAREPREFIX)/instamenu
	cp -f emoji-list $(DESTDIR)$(SHAREPREFIX)/instamenu


uninstall:
	rm -rf $(DESTDIR)$(PREFIX)/bin/instamenue_*
	rm -rf $(DESTDIR)$(SHAREPREFIX)/instamenu/emoji-list

.PHONY: all options clean dist install uninstall
