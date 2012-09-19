## DESCRIPTION: LIM OpenMAX IL ffmpeg encoder component.

## SOURCE: package/lim/limoi-components/ffmpeg/encode

## REQUIRE: limoi-core limoi-base libomx-ffmpeg

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
