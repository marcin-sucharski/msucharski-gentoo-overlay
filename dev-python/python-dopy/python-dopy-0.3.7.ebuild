# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_6 )
inherit distutils-r1

DESCRIPTION="Digital Ocean API Python wrapper"
HOMEPAGE="https://pypi.python.org/pypi/dopy"
SRC_URI="https://pypi.python.org/packages/source/d/${PN#python-}/${PN#python-}-${PV}.tar.gz -> ${PF}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	>=dev-python/requests-1.0.4"
BDEPEND=""

S="${WORKDIR}/${PN#python-}-${PV}"
