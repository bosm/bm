## DESCRIPTION: LIM OpenMAX IL demo resource manager plugin

## SOURCE: package/lim/limoi-plugins/resource_managers/demo

## REQUIRE: limoi-core limoi-base

## FILES:
##   /usr/lib/limoi/resource-manager/*


config:
	autoreconf -i
	./configure --prefix=/usr \
		--build=$(BOS_HOST) \
		--host=$(BOS_TARGET)

compile:
	$(MAKE) all

install:
	$(MAKE) $@
	rm $(DESTDIR)/usr/lib/limoi/resource-manager/*.la
	rm $(DESTDIR)/usr/lib/limoi/resource-manager/*.a

clean:
	$(MAKE) distclean
