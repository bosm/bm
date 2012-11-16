## DESCRIPTION: LIM OpenMAX IL OGG decoder component.

## SOURCE: package/lim/limoi-components/ogg_dec

## REQUIRE: limoi-core limoi-base

## FILES:
##   /usr/lib/limoi/component/*


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
