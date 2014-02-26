PKG_NAME = tar
PKG_VERS = 1.27
PKG_EXT = tar.gz
PKG_DIST_NAME = $(PKG_NAME)-$(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = http://ftp.gnu.org/gnu/$(PKG_NAME)
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)

DEPENDS =

HOMEPAGE = http://www.gnu.org/s/tar/
COMMENT = GNU Tar provides the ability to create tar archives, as well as various other kinds of manipulation
LICENSE = GPL

GNU_CONFIGURE = 1
CONFIGURE_ARGS = --program-prefix=gnu-

include ../../mk/spksrc.cross-cc.mk
