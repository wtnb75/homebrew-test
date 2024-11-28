require 'formula'

class Dosvaxj3 < Formula
  homepage 'https://github.com/nanshiki/DOSVAXJ3'
  head 'https://github.com/nanshiki/DOSVAXJ3.git'

  patch :p1 do
    url 'https://gist.github.com/wtnb75/bd414b8fec012d27aa2b29afb0e45269/raw/8f508def4bce1798803a8f71f1341687734011bb/DOSVAXJ3-fix.patch'
    sha256 '2433c4785e94a4fb00b6eefb38af2584ec9888e94cb433fdc9e64e39d531ac06'
  end

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libpng"
  depends_on "sdlimplus"

  def install
    system 'env', 'PATH=/opt/homebrew/bin:/bin:/usr/bin:/usr/local/bin', 'sh', "autogen.sh"
    system './configure', "--prefix=#{prefix}"
    system 'make'
    system 'make', 'install'
  end
end
