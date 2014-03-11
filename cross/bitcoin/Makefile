PKG_NAME = bitcoin
PKG_VERS = 0.9.0rc1
PKG_EXT = tar.gz
PKG_DIST_NAME = v$(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = https://github.com/$(PKG_NAME)/$(PKG_NAME)/archive
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)

DEPENDS = cross/berkeleydb cross/boost cross/openssl

HOMEPAGE = https://github.com/bitcoin/bitcoin/
COMMENT  = Bitcoin is an experimental new digital currency that enables instant payments to anyone, anywhere in the world. Bitcoin uses peer-to-peer technology to operate with no central authority: managing transactions and issuing money are carried out collectively by the network
LICENSE  = MIT

GNU_CONFIGURE = 1
CONFIGURE_ARGS  = CPPFLAGS="$(CPPFLAGS) -L$(INSTALL_DIR)/usr/local/lib" LIBS="-lboost_system" --with-boost-libdir=$(INSTALL_DIR)/usr/local/lib --with-gui=no

BOOST_LIBRARIES += system filesystem program_options thread chrono test
ENV += BOOST_LIBRARIES="$(BOOST_LIBRARIES)"

PRE_CONFIGURE_TARGET = myPreConfigure

POST_INSTALL_TARGET = myPostInstall
ifneq ($(findstring $(ARCH), bromolow cedarview x86),)
POST_INSTALL_TARGET = myPostInstallX86
endif

ifneq ($(findstring $(ARCH), evansport),)
POST_INSTALL_TARGET = myPostInstallEvansport
endif

include ../../mk/spksrc.cross-cc.mk

.PHONY: myPreConfigure
myPreConfigure:
	cd $(WORK_DIR)/$(PKG_DIR) && ./autogen.sh

.PHONY: myPostInstallX86
myPostInstallX86:
	install -m 755 $(TC_PATH)../lib/libssp.so.0 $(INSTALL_DIR)/usr/local/lib/
	cp -f $(WORK_DIR)/../../../cross/$(PKG_NAME)/PLIST.$(ARCH) $(WORK_DIR)/../../../cross/$(PKG_NAME)/PLIST

.PHONY: myPostInstallEvansport
myPostInstallEvansport:
	install -m 755 $(TC_PATH)../i686-pc-linux-gnu/sys-root/lib/libssp.so.0 $(INSTALL_DIR)/usr/local/lib/
	cp -f $(WORK_DIR)/../../../cross/$(PKG_NAME)/PLIST.$(ARCH) $(WORK_DIR)/../../../cross/$(PKG_NAME)/PLIST

.PHONY: myPostInstall
myPostInstall:
	cp -f $(WORK_DIR)/../../../cross/$(PKG_NAME)/PLIST.$(ARCH) $(WORK_DIR)/../../../cross/$(PKG_NAME)/PLIST
