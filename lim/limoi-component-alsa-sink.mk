## DESCRIPTION: LIM OpenMAX IL alsa audio sink component.

## SOURCE: package/lim/limoi-components/alsa_sink

## REQUIRE: limoi-core limoi-base

## FILES:
##   /usr/lib/limoi/component/*

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
	rm $(DESTDIR)/usr/lib/limoi/component/*.la
	rm $(DESTDIR)/usr/lib/limoi/component/*.a

clean:
	$(MAKE) distclean
