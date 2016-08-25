################################################################################
#      This file is part of LibreELEC - https://LibreELEC.tv
#      Copyright (C) 2016 Team LibreELEC
#
#  LibreELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  LibreELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with LibreELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="repository.kodinerds"
PKG_VERSION="8.0"
PKG_REV="100"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.kodinerds.net"
PKG_URL=""
PKG_DEPENDS_TARGET="toolchain xmlstarlet"
PKG_PRIORITY="optional"
PKG_SECTION=""
PKG_SHORTDESC="Kodinerds add-on repository"
PKG_LONGDESC="Kodinerds add-on repository"
PKG_AUTORECONF="no"

PKG_IS_ADDON="yes"
PKG_ADDON_NAME="Kodinerds Repository"
PKG_ADDON_TYPE="xbmc.addon.repository"
PKG_ADDON_REPOVERSION="8.0"


make_target() {
  $SED -e "s|@PKG_VERSION@|$PKG_VERSION|g" \
       -e "s|@PKG_REV@|$PKG_REV|g" \
       -i addon.xml
}

makeinstall_target() {
  : # nop
}

addon() {
  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID
  cp -R $PKG_BUILD/* $ADDON_BUILD/$PKG_ADDON_ID
}
