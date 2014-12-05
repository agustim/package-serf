INSTALLDIR = $(DESTDIR)

all:
	@echo "all"
clean:
	@echo "clean"
install:
	@echo "Make directory"
	mkdir -p $(INSTALLDIR)/opt/serf
	mkdir -p $(INSTALLDIR)/etc/init.d/
	@echo "Install files"
	install -m 0755 init.d/serf $(INSTALLDIR)/etc/init.d/
	install -m 0755 bin/serf $(INSTALLDIR)/opt/serf/
