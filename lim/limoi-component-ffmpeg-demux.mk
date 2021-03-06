## DESCRIPTION: LIM OpenMAX IL ffmpeg demuxer component.

## SOURCE: package/lim/limoi-components/ffmpeg/demux

## REQUIRE: limoi-core limoi-base libomx-ffmpeg

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
