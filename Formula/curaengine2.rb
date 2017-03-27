class Curaengine2 < Formula
  url "https://github.com/Ultimaker/CuraEngine/archive/2.3.0.tar.gz"
  homepage "https://github.com/Ultimaker/CuraEngine"
  sha256 "15156ae03a51be591f2dffd8a0c431b27f2e3a8d37aa7439e11c376755e0ef0f"

  conflicts_with "curaengine"
  depends_on "protobuf" => :build
  depends_on "libarcus" => :build
  depends_on "cmake" => :build

  def install
    system "/usr/local/bin/cmake", "-DCMAKE_INSTALL_PREFIX=/usr/local/Cellar/curaengine2/2.3.0", "."
    system "make"
    system "make", "install"
  end
end
