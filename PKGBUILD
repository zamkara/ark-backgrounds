# Maintainer: zamkara <zamkara@gnuweeb.org>

pkgname=ark-backgrounds
pkgver=0.1.0
pkgrel=1
pkgdesc="Background images for Ark Linux, forked from GNOME/gnome-backgrounds"
arch=('any')
url="https://github.com/zamkara/ark-backgrounds"
license=('CC-BY-SA-3.0')
depends=('libjxl')
makedepends=('meson' 'ninja' 'glib2')
install=ark-backgrounds.install
source=()
sha256sums=()

prepare() {
  mkdir -p "$srcdir"
  for f in "$startdir"/*; do
    case "$(basename "$f")" in
      src|pkg|build|*.pkg.tar.zst) ;;
      *) cp -r "$f" "$srcdir/" ;;
    esac
  done
}

build() {
  arch-meson . build
  meson compile -C build
}

package() {
  DESTDIR="$pkgdir" meson install -C build
}
