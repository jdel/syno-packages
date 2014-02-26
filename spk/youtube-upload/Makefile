SPK_NAME = youtube-upload
SPK_VERS = 0.7.3
SPK_REV = 1
SPK_ICON = src/youtube-upload.png

SPK_DEPENDS = "Python>=2.7"

MAINTAINER = Jdel.org
DESCRIPTION = A small tool to upload videos on YouTube
DISPLAY_NAME = Youtube Upload

CHANGELOG = Initial release

HOMEPAGE   = http://code.google.com/p/youtube-upload/
LICENSE    = GNU GPL V3

INSTALLER_SCRIPT = src/installer.sh
SSS_SCRIPT       = src/dsm-control.sh

INSTALL_PREFIX = /usr/local/$(SPK_NAME)

COPY_TARGET = nop
POST_STRIP_TARGET = youtube_upload_extra_install

# Pure Python package, make sure ARCH is not defined
override ARCH=

include ../../mk/spksrc.spk.mk

.PHONY: youtube_upload_extra_install
youtube_upload_extra_install: $(STAGING_DIR)/share/
	install -m 755 -d $(STAGING_DIR)/bin
	install -m 755 $(STAGING_DIR)/share/youtube_upload/youtube_upload.py $(STAGING_DIR)/bin/youtube_upload

$(STAGING_DIR)/share:
	install -m 755 -d $(STAGING_DIR)/share
	cd $(STAGING_DIR) && wget https://youtube-upload.googlecode.com/files/youtube-upload-0.7.3.tgz
	cd $(STAGING_DIR) && tar xfz $(STAGING_DIR)/youtube-upload-0.7.3.tgz
	mv $(STAGING_DIR)/youtube-upload-0.7.3/* $(STAGING_DIR)/share/
	rm $(STAGING_DIR)/youtube-upload-0.7.3.tgz
	rm -rf $(STAGING_DIR)/youtube-upload-0.7.3
	sed -i -e "s|#!/usr/bin/python2|#!/usr/bin/env python|g" $(STAGING_DIR)/share/youtube_upload/youtube_upload.py

