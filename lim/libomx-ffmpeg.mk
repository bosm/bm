## DESCRIPTION:
##   LIM OpenMax FFMPEG wrapper library
##
##   this helps converting Codec ID between FFMPEG and OpenMAX
##   among other things.

## SOURCE: package/lim/limoi-components/ffmpeg/libomx-ffmpeg

## REQUIRE: limoi-core limoi-base ffmpeg

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
