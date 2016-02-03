# Copyright 1999-2016 Miguel Marco
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python2_7 )

inherit eutils distutils-r1

DESCRIPTION="Installer of the Tails live system"
HOMEPAGE="https://tails.boum.org"
SRC_URI="http://deb.tails.boum.org/pool/main/t/tails-installer/tails-installer_4.4.7%2bdfsg.orig.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-python/PyQt4
	app-arch/p7zip
	dev-python/configobj
	dev-python/urlgrabber
	dev-python/python-distutils-extra
	dev-python/pygobject
	dev-python/pyparted
	app-cdr/cdrtools
	sys-boot/syslinux
	sys-apps/gptfdisk"

PATCHES=( "${FILESDIR}"/sgdisk.patch )

