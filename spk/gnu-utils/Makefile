SPK_NAME = gnu-utils
SPK_VERS = 1.0
SPK_REV = 1
SPK_ICON = src/gnu-utils.png

STARTABLE = no
BETA=1

DEPENDS  = cross/coreutils cross/findutils cross/diffutils cross/grep cross/which cross/tar cross/sed cross/gawk
SPK_DEPENDS = 

SUPPORTED_ARCHS = 88f6281 armada370 armadaxp bromolow cedarview evansport qoriq x86

MAINTAINER = Jdel.org
DESCRIPTION = This packages contains GNU coreutils 8.22, findutils 4.4.2, diffutils 3.3, grep 2.16, sed 4.2.2, gawk 4.1.0, tar 1.27, which, all of them prefixed with gnu-
DISPLAY_NAME = GNU Utils
CHANGELOG = Original release

HOMEPAGE = http://www.gnu.org/
LICENSE  = GNU GPL v3

INSTALLER_SCRIPT = src/installer.sh
SSS_SCRIPT       = src/dsm-control.sh

INSTALL_PREFIX = /usr/local/$(SPK_NAME)

include ../../mk/spksrc.spk.mk
