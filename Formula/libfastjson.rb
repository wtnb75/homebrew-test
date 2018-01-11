require "formula"

class Libfastjson < Formula
  homepage "http://www.rsyslog.com/tag/libfastjson/"
  url "http://download.rsyslog.com/libfastjson/libfastjson-0.99.8.tar.gz"
  sha256 "3544c757668b4a257825b3cbc26f800f59ef3c1ff2a260f40f96b48ab1d59e07"

  depends_on "libestr"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end
end
