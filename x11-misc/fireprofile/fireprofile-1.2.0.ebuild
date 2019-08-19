# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit desktop

DESCRIPTION="Fireprofile allows easy selection of Firefox profile through dmenu."
HOMEPAGE="https://github.com/marcin-sucharski/fireprofile"
SRC_URI="https://github.com/marcin-sucharski/${PN}/archive/v${PV}.tar.gz -> ${PF}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	>=app-shells/bash-4.0
	>=x11-misc/dmenu-4.6
	www-client/firefox"
BDEPEND=""
S="${WORKDIR}/${PF}"

src_install() {
	default
	dobin fireprofile
	domenu fireprofile.desktop
}
