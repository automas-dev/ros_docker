# Maintainer: Your Name <youremail@domain.com>
pkgname=in_ros
pkgver=0.1.0.1
pkgrel=1
pkgdesc="Provides the in_ros script"
arch=('any')
url="https://github.com/twh2898/ros_docker"
license=('MIT')
depends=(docker)
makedepends=(docker docker-buildx)
changelog=
source=("https://github.com/twh2898/ros_docker/releases/download/$pkgver/$pkgname-$pkgver.tar.xz")
# generate with 'makepkg -g'
sha256sums=('c963068010090202e02318bba03bd7ff9c4aa9b197851843f6f86d038ffeec99')

build() {
    docker buildx build . --no-cache --build-arg ROS_DISTRO=jazzy --tag in_ros:jazzy
}

package() {
    mkdir -p "$pkgdir/usr/local/bin"
    cp in_ros "$pkgdir/usr/local/bin/"
    chmod +x "$pkgdir/usr/local/bin/in_ros"
}
