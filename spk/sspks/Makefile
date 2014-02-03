SPK_NAME = sspks
SPK_VERS = $(shell date +%Y%m%d)
SPK_REV = 1
SPK_ICON = src/sspks.png
SCREEN1 = src/screen_1.png
SCREEN2 = src/screen_2.png
DSM_UI_DIR = app

DEPENDS  =
SPK_DEPENDS = 

MAINTAINER = Jdel.org
DESCRIPTION = A very simple Synology Package Server, reverse engineered from the official Synology package repository and SynoCommunity.
DESCRIPTION_FRE = Un serveur de packages Synology tres simple, calqué sur le fonctionnement du repository Synology et Synocommunity.
RELOAD_UI = yes
DISPLAY_NAME = Simple SPK Server

CHANGELOG = Fixed device list, replaced 88f6282 with 88f6281 as there is no toolchain for 88f6282

HOMEPAGE   = http://github.com/jdel/sspks.git
LICENSE    = GPL

WIZARDS_DIR = src/wizard/

INSTALLER_SCRIPT = src/installer.sh
SSS_SCRIPT       = src/dsm-control.sh

INSTALL_PREFIX = /usr/local/$(SPK_NAME)

COPY_TARGET = nop
POST_STRIP_TARGET = sspks_extra_install

# Pure PHP package, make sure ARCH is not defined
override ARCH=

include ../../mk/spksrc.spk.mk

.PHONY: sspks_extra_install
sspks_extra_install: $(STAGING_DIR)/share/sspks
	install -m 755 -d $(STAGING_DIR)/etc
	install -m 755 -d $(STAGING_DIR)/app
	install -m 644 src/app/config $(STAGING_DIR)/app/config
	install -m 755 -d $(STAGING_DIR)/app/images
	for size in 16 24 32 48; do \
		convert $(SPK_ICON) -thumbnail $${size}x$${size} \
		        $(STAGING_DIR)/app/images/$(SPK_NAME)-$${size}.png ; \
	done

$(STAGING_DIR)/share/sspks:
	install -m 755 -d $(STAGING_DIR)/share
	cd $(STAGING_DIR)/share && git clone https://github.com/jdel/sspks sspks
	rm -fr $(STAGING_DIR)/share/sspks/.git $(STAGING_DIR)/share/sspks/.gitignore
