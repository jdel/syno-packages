PKG_NAME = diffutils
PKG_VERS = 3.3
PKG_EXT = tar.xz
PKG_DIST_NAME = $(PKG_NAME)-$(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = http://ftp.gnu.org/gnu/$(PKG_NAME)
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)

DEPENDS =

HOMEPAGE = http://www.gnu.org/s/diffutils/
COMMENT  = GNU Diffutils is a package of several programs related to finding differences between files
LICENSE  = GPL

GNU_CONFIGURE = 1
CONFIGURE_ARGS = --program-prefix=gnu-

include ../../mk/spksrc.cross-cc.mk
