SPK_NAME = bitcoin
SPK_VERS = 0.9.0rc1
SPK_REV = 1
SPK_ICON = src/bitcoin.png

DEPENDS = cross/busybox cross/$(SPK_NAME)
SPK_DEPENDS =

MAINTAINER = Jdel.org
DISPLAY_NAME = Bitcoin
DESCRIPTION = EXPERIMENTAL ! USE AT YOUR OWN RISK ! There is no GUI for this package. Bitcoin is an experimental new digital currency that enables instant payments to anyone, anywhere in the world. Bitcoin uses peer-to-peer technology to operate with no central authority. Please report issues on https://github.com/jdel/syno-packages/issues
CHANGELOG = Initial release. EXPERIMENTAL ! USE AT YOUR OWN RISK ! There is no GUI for this package. Please report issues on https://github.com/jdel/syno-packages/issues.
BETA=1
#DEBUG=1

HOMEPAGE   = https://github.com/bitcoin/bitcoin
LICENSE    = MIT

INSTALLER_SCRIPT = src/installer.sh
SSS_SCRIPT       = src/dsm-control.sh

WIZARDS_DIR = src/wizard

BUSYBOX_CONFIG = usrmng
ENV += BUSYBOX_CONFIG=$(BUSYBOX_CONFIG)

POST_STRIP_TARGET = bitcoin_extra_install

include ../../mk/spksrc.spk.mk

.PHONY: bitcoin_extra_install
bitcoin_extra_install:
	install -m 755 -d $(STAGING_DIR)/var
	install -m 755 -d $(STAGING_DIR)/etc
	install -m 644 src/bitcoin.conf $(STAGING_DIR)/etc/
	install -m 755 src/bitcoin $(STAGING_DIR)/bin
