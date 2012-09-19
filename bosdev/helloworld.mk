## DESCRIPTION: bosm build system usage demo helloworld package

## SOURCE: package/bosdev/demo/helloworld

## FILES:
##   /usr/local/bin/*

.PHONY: compile install clean

compile:
	$(MAKE) all

clean install:
	$(MAKE) $@
