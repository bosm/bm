## DESCRIPTION:
##   LIM OpenMAX Application Layer
##
##   This is an open source implementation of OpenMAX Application Layer,
##   based on OpenMAX Integration Layer components.

## SOURCE: package/lim/limoa

## REQUIRE: limutil limoi-core limoi-base

## FILES:
##   /usr/lib/*.so.*

## FILES-devel:
##   /usr/lib/*.so
##   /usr/lib/pkgconfig/*
##   /usr/include/*

## FILES-test:
##   /usr/bin/*

.PHONY: config compile install clean

config:
	autoreconf -i
	./configure --prefix=/usr \
		--build=$(BOS_HOST) \
		--host=$(BOS_TARGET)

compile:
	$(MAKE) all

install:
	$(MAKE) install check
	rm $(DESTDIR)/usr/lib/*.la
	rm $(DESTDIR)/usr/lib/*.a
	install -D test/player $(DESTDIR)/usr/bin/limoxplay

clean:
	$(MAKE) distclean
