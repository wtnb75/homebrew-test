require "formula"

class Libncap < Formula
  homepage "https://www.dns-oarc.net/tools/ncap"
  url "https://dl.farsightsecurity.com/dist/ncap/ncap-1.9.2.tar.gz"
  sha256 "d060bc3f89c90e1aa2e54716b722d4f4ef4a57e0174003d02d9ef11bbbb47993"

  depends_on "libpcap"
  depends_on "libbind"

  def install
    system "env", "CFLAGS=-Wno-format-nonliteral -Wno-missing-noreturn", "./configure", "--with-libpcap=/usr/local/opt/libpcap", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end
end
