name="kvantum"
pkgname="kvantum"
version="0.19.0"
url="https://github.com/tsujan/Kvantum/releases/download/V0.19.0/Kvantum-0.19.0.tar.xz"
license="GPL"
build_depends="g++ cmake"
depends="libx11-dev qtbase5-dev libqt5svg5-dev libqt5x11extras5-dev libkf5windowsystem-dev"
gives="kvantum"
breaks="qt5-style-kvantum"
description="Kvantum (by Pedram Pourang, a.k.a. Tsu Jan) is an SVG-based theme engine for Qt, tuned to KDE and LXQt, with an emphasis on elegance, usability and practicality."
hash="c3c73ee62c23c60342b6a2aaca670e2a6316bc17b51d8666278399c36085ee7b"

prepare() {
          cd Kvantum
          mkdir build && cd build
}

build() {
        cmake -j$(nproc) ..
        make -j$(nproc)
}

install() {
    make install DESTDIR=/usr/src/pacstall/kvantum
}
