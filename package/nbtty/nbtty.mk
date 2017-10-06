################################################################################
#
# nbtty
#
################################################################################

NBTTY_VERSION = v0.1.0
NBTTY_SITE = $(call github,fhunleth,nbtty,$(NBTTY_VERSION))
NBTTY_LICENSE = GPL-2.0+
NBTTY_LICENSE_FILES = COPYING

# The Makefile does not have an install target.
define NBTTY_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/nbtty $(TARGET_DIR)/usr/bin/nbtty
endef

$(eval $(autotools-package))