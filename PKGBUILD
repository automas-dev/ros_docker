# Maintainer: Your Name <youremail@domain.com>
pkgname=in_ros
pkgver=0.1.0
pkgrel=1
pkgdesc="Provides the in_ros script"
arch=('any')
url="https://github.com/automas-dev/ros_docker"
license=('MIT')
depends=(docker)
makedepends=(docker docker-buildx)
changelog=
source=("https://github.com/automas-dev/ros_docker/releases/download/$pkgver/$pkgname-$pkgver.tar.xz")
# generate with 'makepkg -g'
sha256sums=('a7d02063c1ceeed2b3d34e03d7ced28098cd4dd69fb799426e88e85f4f72f86e')

build() {
    docker buildx build . --no-cache --build-arg ROS_DISTRO=jazzy --tag in_ros:jazzy
}

package() {
    mkdir -p "$pkgdir/usr/local/bin"
    cp in_ros "$pkgdir/usr/local/bin/"
    chmod +x "$pkgdir/usr/local/bin/in_ros"
}
