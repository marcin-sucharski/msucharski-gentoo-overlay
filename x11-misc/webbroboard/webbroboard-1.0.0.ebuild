# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit desktop

MY_PN="WebBroboard"

DESCRIPTION="Webbroboard acts as a browser which copies URL of requested site to clipboard."
HOMEPAGE="https://github.com/Vifon/WebBroboard"
SRC_URI="https://github.com/Vifon/${MY_PN}/archive/v${PV}.tar.gz -> ${PF}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	>=app-shells/bash-4.0
	>=x11-misc/xsel-1.2.0
	virtual/notification-daemon"
BDEPEND=""
S="${WORKDIR}/${MY_PN}-${PV}"

src_install() {
	default
	dobin webbroboard
	domenu webbroboard.desktop
}

pkg_postinst() {
	elog "To use webbroboard as your default browser invoke following commands:"
	elog "
xdg-mime default webbroboard.desktop x-scheme-handler/https
xdg-mime default webbroboard.desktop x-scheme-handler/http
xdg-mime default webbroboard.desktop text/html"
}
