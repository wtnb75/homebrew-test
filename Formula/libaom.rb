class Libaom < Formula
  desc "libaom AV1 encoder library"
  homepage "https://aomedia.googlesource.com/aom/"
  head "https://aomedia.googlesource.com/aom.git"

  depends_on "cmake" => :build
  depends_on "nasm" => :build

  def install
    args = std_cmake_args
    args << "-G"
    args << "Unix Makefiles"
    args << "-DENABLE_NASM=on"

    system "mkdir", "-p", "b"
    Dir.chdir "b"
    system "cmake", "..", *args
    system "make", "install"
  end
end
