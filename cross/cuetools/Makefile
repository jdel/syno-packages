PKG_NAME = cuetools
PKG_VERS = 1.4.0
PKG_EXT = tar.gz
PKG_DIST_NAME = $(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = https://github.com/svend/cuetools/archive
PKG_DIR = ${PKG_NAME}-$(PKG_VERS)

DEPENDS =

HOMEPAGE = https://github.com/svend/cuetools
COMMENT  = cuetools is a set of utilities for working with cue files and toc files.
LICENSE  = GNU GPL V2

GNU_CONFIGURE = 1
CONFIGURE_TARGET = myConfigure

include ../../mk/spksrc.cross-cc.mk

.PHONY: myConfigure
myConfigure:
	cd $(WORK_DIR)/$(PKG_DIR) && autoreconf --install && ./configure $(TC_CONFIGURE_ARGS)
