INSTALLDIR = $(DESTDIR)

all:
	@echo "all"
clean:
	@echo "clean"
install:
	@echo "Make directory"
	mkdir -p $(INSTALLDIR)/opt/etcd
	mkdir -p $(INSTALLDIR)/etc/init.d/
	@echo "Install files"
	install -m 0755 init.d/etcd $(INSTALLDIR)/etc/init.d/
	install -m 0755 bin/etcd $(INSTALLDIR)/opt/etcd/
