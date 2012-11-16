## DESCRIPTION: LIM OpenMAX Integration Layer base component implementation

## SOURCE: package/lim/limoi-base

## REQUIRE: limoi-core

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
