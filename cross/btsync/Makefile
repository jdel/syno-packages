PKG_NAME = btsync
PKG_VERS = 1.0.116
PKG_EXT = tar.gz
PKG_DIST_NAME = $(PKG_NAME)_$(BTSYNC_ARCH).$(PKG_EXT)
PKG_DIST_SITE = http://btsync.s3-website-us-east-1.amazonaws.com
PKG_DIR = $(PKG_NAME)

DEPENDS =

HOMEPAGE = http://labs.bittorrent.com/experiments/sync.html
COMMENT  = Automatically sync files via secure, distributed technology
LICENSE  =

EXTRACT_PATH = $(WORK_DIR)/$(PKG_DIR)
CONFIGURE_TARGET = nop
COMPILE_TARGET = nop
INSTALL_TARGET = myInstall

# Define BTSYNC_ARCH as per BitTorrent Sync standards
ifeq ($(findstring $(ARCH),88f5281 88f6281),$(ARCH))
BTSYNC_ARCH = arm
endif
ifeq ($(findstring $(ARCH),powerpc ppc824x ppc853x ppc854x),$(ARCH))
BTSYNC_ARCH = powerpc
endif
ifeq ($(findstring $(ARCH),x86 cedarview bromolow),$(ARCH))
BTSYNC_ARCH = glibc23_x64
endif
ifeq ($(findstring $(ARCH),qoriq),$(ARCH))
BTSYNC_ARCH = ppc_quoriq
endif
ifeq ($(BTSYNC_ARCH),)
$(error Unsupported ARCH $(ARCH))
endif

include ../../mk/spksrc.cross-cc.mk

myInstall:
	mkdir -p $(STAGING_INSTALL_PREFIX)/bin
	install -m 755 $(WORK_DIR)/$(PKG_DIR)/btsync $(STAGING_INSTALL_PREFIX)/bin/
