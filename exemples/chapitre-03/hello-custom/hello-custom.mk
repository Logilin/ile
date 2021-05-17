################################################################################
#
# hello-custom
#
################################################################################

HELLO_CUSTOM_SITE = https://www.logilin.fr/files
HELLO_CUSTOM_SOURCE = hello-custom.tar.bz2
HELLO_CUSTOM_LICENSE = GPL-2.0+

define HELLO_CUSTOM_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) CC="$(TARGET_CC)" -C $(@D)
endef

define HELLO_CUSTOM_INSTALL_TARGET_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) DESTDIR="$(TARGET_DIR)" -C $(@D) install
endef

$(eval $(generic-package))
