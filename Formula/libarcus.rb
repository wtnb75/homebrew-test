class Libarcus < Formula
  desc "libArcus"
  homepage "https://github.com/Ultimaker/libArcus"
  url "https://github.com/Ultimaker/libArcus/archive/2.1.3.tar.gz"
  sha256 "361700c1e75d6006544b477584fe4f64cb05b87460d4270f9ecd6ff76348337e"

  depends_on "protobuf" => :build
  depends_on "cmake" => :build

  def install
    system "/usr/local/bin/cmake", "-DBUILD_PYTHON=OFF", "-DCMAKE_INSTALL_PREFIX=/usr/local/Cellar/libarcus/2.1.3", "."
    system "make"
    system "make", "install"
  end
end
