#
# Copyright (C) 2006-2010 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=cryptsetup
PKG_VERSION:=1.3.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:=http://cryptsetup.googlecode.com/files/
PKG_MD5SUM:=1f5b5a9d538e8a3c191fb7dd85b9b013

include $(INCLUDE_DIR)/package.mk

TARGET_LDFLAGS+=-Wl,-rpath-link=$(STAGING_DIR)/usr/lib

define Package/cryptsetup/Default
  URL:=http://code.google.com/p/cryptsetup/
endef

define Package/cryptsetup
$(call Package/cryptsetup/Default)
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=Cryptsetup
  DEPENDS:=@!LINUX_2_4 +libblkid +libuuid +libpopt +lvm2 +libgcrypt
endef

define Package/cryptsetup/description
	Cryptsetup-luks
endef

define Build/Compile
	$(call Build/Configure/Default)
	$(MAKE) -C $(PKG_BUILD_DIR) DESTDIR="$(PKG_INSTALL_DIR)" install
endef

define Package/cryptsetup/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(CP) $(PKG_INSTALL_DIR)/usr/sbin/cryptsetup $(1)/usr/sbin
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libcryptsetup.so.* $(1)/usr/lib
endef

$(eval $(call BuildPackage,cryptsetup))
