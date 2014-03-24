SPK_NAME = gnu-utils
SPK_VERS = 1.3
SPK_REV = 2
SPK_ICON = src/gnu-utils.png

#STARTABLE = no
#BETA=1

DEPENDS  = cross/coreutils cross/findutils cross/diffutils cross/grep cross/which cross/tar cross/sed cross/gawk cross/gnu-screen cross/gnu-nano
SPK_DEPENDS = "Perl>=5.18"

SUPPORTED_ARCHS = 88f6281 armada370 armadaxp bromolow cedarview evansport qoriq x86

MAINTAINER = Jdel.org
DESCRIPTION = This packages contains utilities useful for system admins: GNU coreutils 8.22, nano 2.26, findutils 4.4.2, diffutils 3.3, grep 2.16, sed 4.2.2, gawk 4.1.0, tar 1.27, screen 4.0.3, rename 1.6 \(perl\). Add /usr/local/gnu-utils/bin to your PATH. Each file in this package is provided under its own license.
DISPLAY_NAME = GNU Utils \(and more\)
CHANGELOG = Added rename and nano

HOMEPAGE = http://www.gnu.org/
LICENSE  = Various

INSTALLER_SCRIPT = src/installer.sh
SSS_SCRIPT       = src/dsm-control.sh

POST_STRIP_TARGET = myPostStrip

INSTALL_PREFIX = /usr/local/$(SPK_NAME)

include ../../mk/spksrc.spk.mk

.PHONY: myPostStrip
myPostStrip:
	cd $(WORK_DIR) && wget https://github.com/ap/rename/archive/v1.600.tar.gz
	cd $(WORK_DIR) && tar xfz v1.600.tar.gz
	cd $(WORK_DIR) && rm v1.600.tar.gz
	mv $(WORK_DIR)/rename-1.600/rename $(STAGING_DIR)/bin/
	mv $(STAGING_DIR)/bin/screen $(STAGING_DIR)/bin/gnu-screen
