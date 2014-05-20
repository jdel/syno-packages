PKG_NAME = tesseract-ocr
PKG_VERS = 3.02.02
PKG_EXT = tar.gz
PKG_DIST_NAME = $(PKG_NAME)-$(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = https://$(PKG_NAME).googlecode.com/files/
PKG_DIR = $(PKG_NAME)

DEPENDS = cross/leptonica

HOMEPAGE = https://code.google.com/p/tesseract-ocr/
COMMENT  = Tesseract is probably the most accurate open source OCR engine available. Combined with the Leptonica Image Processing Library it can read a wide variety of image formats and convert them to text in over 60 languages.
LICENSE  = Apache License 2.0

GNU_CONFIGURE = 1

CONFIGURE_ARGS = LIBLEPT_HEADERSDIR=$(INSTALL_DIR)$(INSTALL_PREFIX)/include/leptonica

include ../../mk/spksrc.cross-cc.mk
