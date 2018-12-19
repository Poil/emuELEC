################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="empty"
PKG_VERSION="0.6.20b"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://empty.sourceforge.net/"
PKG_DEPENDS_TARGET="linux"
PKG_URL="http://downloads.sourceforge.net/sourceforge/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tgz"
PKG_SECTION="sysutils"
PKG_SHORTDESC="Run applications under pseudo-terminal sessions"
PKG_LONGDESC="Run applications under pseudo-terminal sessions"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

make_target() {
  make CC=$CC
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/bin
  cp empty $INSTALL/usr/bin/
}
