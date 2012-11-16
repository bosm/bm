## DESCRIPTION:
##   FFmpeg is a complete, cross-platform solution to record, convert and
##   stream audio and video

## SOURCE: package/ffmpeg
##         0001-export-audioconvert-header.patch

## FILES:
##   /usr/lib/*.so.*
##   /usr/share/ffmpeg/*
##   /usr/bin/*

## FILES-devel:
##   /usr/lib/*.so
##   /usr/lib/pkgconfig/*
##   /usr/include/*

## FILES-doc:
##   /usr/share/man


config:
	./configure --prefix=/usr \
		--enable-shared \
		--disable-yasm

compile:
	$(MAKE) all

install:
	$(MAKE) $@
	rm $(DESTDIR)/usr/lib/*.a

clean:
	$(MAKE) distclean
