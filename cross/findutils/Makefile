PKG_NAME = findutils
PKG_VERS = 4.4.2
PKG_EXT = tar.gz
PKG_DIST_NAME = $(PKG_NAME)-$(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = http://ftp.gnu.org/pub/gnu/$(PKG_NAME)
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)

DEPENDS =

HOMEPAGE = http://www.gnu.org/s/findutils/
COMMENT  = The GNU Find Utilities are the basic directory searching utilities of the GNU operating system.
LICENSE  = GPL

GNU_CONFIGURE = 1
CONFIGURE_ARGS = --program-prefix=gnu- gl_cv_func_wcwidth_works=yes ac_cv_func_fnmatch_gnu=yes

include ../../mk/spksrc.cross-cc.mk
