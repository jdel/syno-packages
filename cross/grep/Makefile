PKG_NAME = grep
PKG_VERS = 2.16
PKG_EXT = tar.xz
PKG_DIST_NAME = $(PKG_NAME)-$(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = http://ftp.gnu.org/gnu/$(PKG_NAME)
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)

DEPENDS =

HOMEPAGE = http://www.gnu.org/software/grep/
COMMENT  = The grep command searches one or more input files for lines containing a match to a specified pattern.
LICENSE  = GPL

GNU_CONFIGURE = 1
CONFIGURE_ARGS = --program-prefix=gnu-

include ../../mk/spksrc.cross-cc.mk
