## DESCRIPTION: LIM OpenMAX implementation utility library

## SOURCE: package/lim/limutil

## FILES:
##   /usr/lib/*.so.*

## FILES-devel:
##   /usr/lib/*.so
##   /usr/lib/pkgconfig/*
##   /usr/include/*


.PHONY: config compile install clean

config:
	autoreconf -i
	./configure --prefix=/usr \
		--build=$(BOS_HOST) \
		--host=$(BOS_TARGET)

compile:
	$(MAKE) all

install:
	$(MAKE) $@
	rm $(DESTDIR)/usr/lib/*.la
	rm $(DESTDIR)/usr/lib/*.a

clean:
	$(MAKE) distclean
