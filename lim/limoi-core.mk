## DESCRIPTION:
##   LIM OpenMAX Integration Layer
##
##   limoi-core provides the component loader and all OpenMAX integration
##   layer APIs, it is designed to work with any integration layer components,
##   in addition to those developed under limoi framework.

## SOURCE: package/lim/limoi-core

## REQUIRE: limutil

## FILES:
##   /usr/lib/*.so.*

## FILES-devel:
##   /usr/lib/*.so
##   /usr/lib/pkgconfig/*
##   /usr/include/*


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
