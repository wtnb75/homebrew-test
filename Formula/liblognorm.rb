require 'formula'

class Liblognorm < Formula
  homepage 'http://www.liblognorm.com/'
  url 'http://www.liblognorm.com/files/download/liblognorm-2.0.4.tar.gz'
  sha256 '730175b6e4e8818c31a60f614f8ba38aae4f8edbeb50d0e34236749e5d20b3a3'

  depends_on 'libestr'
  depends_on 'libfastjson'

  def install
    system 'env', 'PKG_CONFIG=/usr/local/bin/pkg-config', './configure', "--prefix=#{prefix}"
    system 'make'
    system 'make', 'install'
  end
end
