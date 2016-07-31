require "formula"

class S3fsOsxfuse < Formula
  homepage "https://code.google.com/p/s3fs/"

  stable do
    url "https://github.com/s3fs-fuse/s3fs-fuse/archive/v1.78.tar.gz"
    sha256 "adbbd92faaed071d90c2016cb7d53aeda017c99ab91ea5dd08f3906afb2d1b8e"
    patch do
      url "https://gist.githubusercontent.com/wtnb75/160909c2b1a37c6d9d0d/raw/5effbb50e1e58f60581c4b94e02ba98a9a86b407/s3fs-fuse-1.78-osxfuse.patch"
      sha256 "d485c2959e537c56750186a019a8cd02df91fe4ee7577ef54771120028a08f75"
    end
  end

  depends_on "pkg-config" => :build
  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "nettle"
  depends_on "libgcrypt"

  # depends_on "osxfuse"

  head "https://github.com/s3fs-fuse/s3fs-fuse.git"

  def install
    system "./autogen.sh"
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make", "install"
  end

  def caveats; <<-EOS.undent
    brew cask install osxfuse
    cp /usr/local/lib/pkgconfig/osxfuse.pc /usr/local/Library/ENV/pkgconfig/10.10

    Be aware that s3fs has some caveats concerning S3 "directories"
    that have been created by other tools. See the following issue for
    details:

      http://code.google.com/p/s3fs/issues/detail?id=73
    EOS
  end
end
