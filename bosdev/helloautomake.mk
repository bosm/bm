## DESCRIPTION:
##   bosm build system usage demo helloautomake package, this demonstrates how
##   to write bos makefile for automake based package.

## SOURCE: package/bosdev/demo/helloautomake

## REQUIRE: helloworld-native

## FILES:
##   /usr/bin/*

## FILES-doc:
##   /usr/share/doc/*

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

clean:
	$(MAKE) distclean
