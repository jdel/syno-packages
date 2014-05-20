PKG_NAME = procps
PKG_VERS = 3.2.8
PKG_EXT = tar.gz
PKG_DIST_NAME = $(PKG_NAME)-$(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = http://procps.sourceforge.net
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)

DEPENDS = cross/gnu-ncurses

HOMEPAGE = http://procps.sourceforge.net/
COMMENT  = procps is the package that has a bunch of small useful utilities that give information about processes using the /proc filesystem. The package includes the programs ps, top, vmstat, w, kill, free, slabtop, and skill.
LICENSE  = GPLv2

CONFIGURE_TARGET = nop
#PRE_COMPILE_TARGET = myPreCompile
COMPILE_TARGET = myCompile
INSTALL_TARGET = myInstall

define PPS
#!/bin/sh
if [ $$# -lt 1 ]; then
  echo "Unknown option(s): $$@"
  echo "Available commands: free, kill, pgrep, pkill, pmap, ps, pwdx, skill, slabtop,"
  echo "                    snice, sysctl, tload, top, uptime, vmstat, w, watch"
  exit 1
fi

TERMINFO=`dirname $$0`/../lib/terminfo LD_LIBRARY_PATH=`dirname $$0`/../lib exec `dirname $$0`/procps/"$$@"
endef
export PPS

include ../../mk/spksrc.cross-cc.mk

.PHONY: myPreCompile
myPreCompile:
	rm -f $(INSTALL_DIR)$(INSTALL_PREFIX)/bin/*

.PHONY: myCompile
myCompile:
	$(RUN) CPPFLAGS=-I$(INSTALL_DIR)$(INSTALL_PREFIX)/include LDFLAGS=-L$(INSTALL_DIR)$(INSTALL_PREFIX)/lib $(MAKE)

.PHONY: myInstall
myInstall:
	@echo "$$PPS" > $(INSTALL_DIR)/$(INSTALL_PREFIX)/bin/pps
	chmod 755 $(INSTALL_DIR)/$(INSTALL_PREFIX)/bin/pps
	chmod a+x $(INSTALL_DIR)/$(INSTALL_PREFIX)/bin/pps
	$(RUN) install -m 755 -d $(INSTALL_DIR)/$(INSTALL_PREFIX)/bin/procps
	$(RUN) install -m 755 free $(INSTALL_DIR)/$(INSTALL_PREFIX)/bin/procps/
	$(RUN) install -m 755 kill $(INSTALL_DIR)/$(INSTALL_PREFIX)/bin/procps/
	$(RUN) install -m 755 pgrep $(INSTALL_DIR)/$(INSTALL_PREFIX)/bin/procps/
	$(RUN) install -m 755 pkill $(INSTALL_DIR)/$(INSTALL_PREFIX)/bin/procps/
	$(RUN) install -m 755 pmap $(INSTALL_DIR)/$(INSTALL_PREFIX)/bin/procps/
	$(RUN) install -m 755 pwdx $(INSTALL_DIR)/$(INSTALL_PREFIX)/bin/procps/
	$(RUN) install -m 755 skill $(INSTALL_DIR)/$(INSTALL_PREFIX)/bin/procps/
	$(RUN) install -m 755 slabtop $(INSTALL_DIR)/$(INSTALL_PREFIX)/bin/procps/
	$(RUN) install -m 755 snice $(INSTALL_DIR)/$(INSTALL_PREFIX)/bin/procps/
	$(RUN) install -m 755 sysctl $(INSTALL_DIR)/$(INSTALL_PREFIX)/bin/procps/
	$(RUN) install -m 755 tload $(INSTALL_DIR)/$(INSTALL_PREFIX)/bin/procps/
	$(RUN) install -m 755 top $(INSTALL_DIR)/$(INSTALL_PREFIX)/bin/procps/
	$(RUN) install -m 755 uptime $(INSTALL_DIR)/$(INSTALL_PREFIX)/bin/procps/
	$(RUN) install -m 755 vmstat $(INSTALL_DIR)/$(INSTALL_PREFIX)/bin/procps/
	$(RUN) install -m 755 w $(INSTALL_DIR)/$(INSTALL_PREFIX)/bin/procps/
	$(RUN) install -m 755 watch $(INSTALL_DIR)/$(INSTALL_PREFIX)/bin/procps/
	$(RUN) install -m 755 ps/ps $(INSTALL_DIR)/$(INSTALL_PREFIX)/bin/procps/
	$(RUN) install -m 755 proc/libproc-3.2.8.so $(INSTALL_DIR)/$(INSTALL_PREFIX)/lib/
