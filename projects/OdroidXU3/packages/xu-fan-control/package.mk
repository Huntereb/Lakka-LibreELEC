################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
#
#  This Program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2, or (at your option)
#  any later version.
#
#  This Program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.tv; see the file COPYING.  If not, write to
#  the Free Software Foundation, 51 Franklin Street, Suite 500, Boston, MA 02110, USA.
#  http://www.gnu.org/copyleft/gpl.html
################################################################################

PKG_NAME="xu-fan-control"
PKG_VERSION="1"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_SITE="https://www.hiscorebob.lu/2016/10/odroid-xu34-silent-fan-control-in-lakka-openelec/"
PKG_URL=""
PKG_DEPENDS_TARGET=""
PKG_PRIORITY="optional"
PKG_SECTION="tools"
PKG_SHORTDESC="Odroid-XU3 fan control"
PKG_LONGDESC="Odroid-XU3 fan control"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

make_target() {
  :
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/bin/
  cp $PKG_DIR/scripts/fan-control.sh $INSTALL/usr/bin/
  chmod +x $INSTALL/usr/bin/fan-control.sh
}

post_install() {
  enable_service fan-control.service
}
