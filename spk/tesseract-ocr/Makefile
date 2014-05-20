SPK_NAME = tesseract-ocr
SPK_VERS = 3.02.02
SPK_REV = 1
SPK_ICON = src/$(SPK_NAME).png

DEPENDS = cross/$(SPK_NAME)
SPK_DEPENDS =

MAINTAINER = Jdel.org
DISPLAY_NAME = Tesseract OCR
DESCRIPTION = Tesseract is probably the most accurate open source OCR engine available. Combined with the Leptonica Image Processing Library it can read a wide variety of image formats and convert them to text in over 60 languages.
CHANGELOG = Initial release.
BETA=1
#DEBUG=1

STARTABLE = no

HOMEPAGE   = https://code.google.com/p/tesseract-ocr/
LICENSE    = Apache License 2.0

INSTALLER_SCRIPT = src/installer.sh
SSS_SCRIPT       = src/dsm-control.sh

INSTALL_PREFIX = /usr/local/$(SPK_NAME)

POST_STRIP_TARGET = tesseract_extra_install

include ../../mk/spksrc.spk.mk

.PHONY: tesseract_extra_install
tesseract_extra_install:
	wget https://tesseract-ocr.googlecode.com/files/tesseract-ocr-3.02.eng.tar.gz
	mv tesseract-ocr-3.02.eng.tar.gz $(STAGING_DIR)/share/tessdata/
	cd $(STAGING_DIR)/share/tessdata/ && tar xfz tesseract-ocr-3.02.eng.tar.gz
	rm $(STAGING_DIR)/share/tessdata/tesseract-ocr-3.02.eng.tar.gz
