require 'formula'

class Sdlimplus < Formula
  homepage 'https://github.com/nanshiki/SDL-IM-plus'
  head 'https://github.com/nanshiki/SDL-IM-plus.git'

  patch :p1 do
    url 'https://gist.github.com/wtnb75/bd414b8fec012d27aa2b29afb0e45269/raw/8f508def4bce1798803a8f71f1341687734011bb/SDL-IM-fix.patch'
    sha256 'a7bb1469f9e9336e124c6b6d3466a1889d240eae4933f6f0928275195a140ae0'
  end

  depends_on "autoconf" => :build

  def install
    system 'env', 'PATH=/opt/homebrew/bin:/bin:/usr/bin:/usr/local/bin', 'sh', "autogen.sh"
    system './configure', "--prefix=#{prefix}"
    system 'make'
    system 'make', 'install'
  end
end
