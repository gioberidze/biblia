# Maintainer: Giorgi Beridze <gioberidzegio@yahoo.com>
pkgname=biblia
pkgver=0.22.5
pkgrel=0
epoch=
pkgdesc="Bible viewer app with GUI which uses MyBible Android app's modules which you can add"
arch=('x86_64')
url="https://github.com/gioberidze/biblia"
license=('GPL-3.0')
depends=('sqlite' 'go' 'gtk3' 'webkit2gtk-4.1')
makedepends=('git' 'go' 'gtk3' 'webkit2gtk-4.1')
source=("https://github.com/gioberidze/biblia/archive/refs/tags/0.22.5.tar.gz")
sha256sums=("SKIP")

build() {
  cd "$srcdir/$pkgname-$pkgver"
  go build -o build/$pkgname ./cmd/
}

package() {
  cd "$srcdir/$pkgname-$pkgver"
  install -Dm755 "build/$pkgname" "$pkgdir/usr/local/bin/$pkgname"
  local target_dir="/usr/local/share/$pkgname"

  install -d "$pkgdir/usr/share/applications"
  mv "biblia.desktop" "$pkgdir/usr/share/applications"
  install -d "$pkgdir/$target_dir/static"
  mv "static/"* "$pkgdir/$target_dir/static"
  install -d "$pkgdir/$target_dir/database"
  mv "database/"* "$pkgdir/$target_dir/database"
}
