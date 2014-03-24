PKG_NAME = nano
PKG_VERS = 2.2.6
PKG_EXT = tar.gz
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)
PKG_DIST_NAME = $(PKG_DIR).$(PKG_EXT)
PKG_DIST_SITE = http://www.nano-editor.org/dist/v2.2/

DEPENDS = cross/gnu-ncurses

HOMEPAGE = http://www.nano-editor.org/
COMMENT  = The 2.2 release of GNU nano continues to add some features while attempting to provide continuity to users of previous versions
LICENSE  = GPLv2

GNU_CONFIGURE = 1
CONFIGURE_ARGS  = --enable-nanorc --program-prefix=gnu-

include ../../mk/spksrc.cross-cc.mk

