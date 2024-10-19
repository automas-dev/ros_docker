# Maintainer: Your Name <youremail@domain.com>
pkgname=in_ros
pkgver=0.1.0
pkgrel=2
pkgdesc=""
arch=('any')
url=""
license=('MIT')
depends=(docker)
makedepends=(docker docker-buildx)
changelog=
source=(Dockerfile in_ros)
# generate with 'makepkg -g'
sha256sums=('398ae65778eb13488a7b2b437996a2d4edb08df936ad1b5cf733b70ca579132c'
            'c371cf47cd6d1fa2903e51072b359598d34b6f8f39c75c467d5b44c142d7fbb8')

build() {
    cd ..
    # docker buildx build . --no-cache --build-arg ROS_DISTRO=jazzy --tag in_ros:jazzy
    docker buildx build . --build-arg ROS_DISTRO=jazzy --tag in_ros:jazzy
}

package() {
    cd ..
    mkdir -p "$pkgdir/usr/local/bin"
    cp in_ros "$pkgdir/usr/local/bin/"
    chmod +x "$pkgdir/usr/local/bin/in_ros"
}
