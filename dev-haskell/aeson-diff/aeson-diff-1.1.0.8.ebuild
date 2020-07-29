# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Extract and apply patches to JSON documents"
HOMEPAGE="https://github.com/thsutton/aeson-diff"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

# Ambiguous module name ‘Data.Vector’: found in multiple packages: AC-Vector-Fancy-2.4.0 vector-0.12.0.2
RESTRICT=test

RDEPEND="dev-haskell/aeson:=[profile?]
	dev-haskell/edit-distance-vector:=[profile?]
	dev-haskell/hashable:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/optparse-applicative:=[profile?]
	dev-haskell/scientific:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( >=dev-haskell/doctest-0.9
		dev-haskell/glob
		dev-haskell/hlint
		dev-haskell/quickcheck
		dev-haskell/quickcheck-instances )
"

src_prepare() {
	default

	cabal_chdeps \
		'base >=4.9 && <4.14' 'base >=4.9'
}
