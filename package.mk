################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2011 Stephan Raue (stephan@openelec.tv)
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
#  the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.
#  http://www.gnu.org/copyleft/gpl.html
################################################################################

PKG_NAME="net-snmp"
PKG_VERSION="5.7.2"
PKG_REV=""
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.net-snmp.org/"
# PKG_URL="http://sourceforge.net/projects/net-snmp/files/$PKG_NAME/$PKG_VERSION/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_URL="http://softlayer-dal.dl.sourceforge.net/project/$PKG_NAME/$PKG_NAME/$PKG_VERSION/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS=""
PKG_BUILD_DEPENDS="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="service"
PKG_SHORTDESC="NET-SNMP utilities."
PKG_LONGDESC="NET-SNMP utilities for snmpd"
PKG_IS_ADDON="no"
PKG_ADDON_TYPE="xbmc.python.script"
PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_TARGET="--disable-applications \
        --disable-manuals \
        --disable-debugging \
        --disable-deprecated \
        --disable-snmptrapd-subagent \
        --enable-minimalist \
        --disable-perl-cc-checks \
        --with-defaults \
        --with-ldflags=-Bstatic \
        --with-perl-modules=no \
        --disable-embedded-perl"

PKG_CONFIGURE_OPTS_INIT="CC=$TARGET_CC AR=$TARGET_AR"
PKG_MAKEINSTALL_OPTS_TARGET=""

pre_make_target() {
  export CFLAGS="$TARGET_CFLAGS"
  export CPPFLAGS="$TARGET_CPPFLAGS"
}