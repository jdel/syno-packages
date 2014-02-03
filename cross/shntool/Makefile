PKG_NAME = shntool
PKG_VERS = 3.0.10
PKG_EXT = tar.gz
PKG_DIST_NAME = ${PKG_NAME}-$(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = http://www.etree.org/shnutils/shntool/dist/src
PKG_DIR = ${PKG_NAME}-$(PKG_VERS)

DEPENDS = cross/flac

HOMEPAGE = http://www.etree.org/shnutils/shntool/
COMMENT  = shntool is a multi-purpose WAVE data processing and reporting utility
LICENSE  = Unknown

#CONFIGURE_TARGET = myConfigure

GNU_CONFIGURE = 1

include ../../mk/spksrc.cross-cc.mk

#.PHONY: myConfigure
#myConfigure:
#	cd $(WORK_DIR)/$(PKG_DIR) && autoreconf --install && ./configure
