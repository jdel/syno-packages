PKG_NAME = sed
PKG_VERS = 4.2.2
PKG_EXT = tar.gz
PKG_DIST_NAME = $(PKG_NAME)-$(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = http://ftp.gnu.org/gnu/$(PKG_NAME)
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)

DEPENDS =

HOMEPAGE = http://www.gnu.org/s/sed/
COMMENT = sed (stream editor) isn't an interactive text editor
LICENSE = GPL

GNU_CONFIGURE = 1
CONFIGURE_ARGS = --program-prefix=gnu-

include ../../mk/spksrc.cross-cc.mk
