require "formula"

class S3fsOsxfuse < Formula
  homepage "https://code.google.com/p/s3fs/"

  stable do
    url "https://github.com/s3fs-fuse/s3fs-fuse/archive/v1.78.tar.gz"
    sha1 "613b448d84451400d3ee14aa9104ba6d9e90bd0b"
    patch do
      url "https://gist.githubusercontent.com/wtnb75/160909c2b1a37c6d9d0d/raw/496bca6efde64df2482d0fd5ae59580bc13b132d/s3fs-fuse-1.78-osxfuse.patch"
      sha1 "0a0326f4b76ece1c9979d6dd5fe0d1a3373cf1f5"
    end
  end

  depends_on "pkg-config" => :build
  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "gnutls"
  depends_on "nettle"
  depends_on "libgcrypt"

  # depends_on "osxfuse"

  head "https://github.com/s3fs-fuse/s3fs-fuse.git"

  def install
    system "./autogen.sh"
    system "./configure", "--disable-dependency-tracking", "--with-gnutls", "--prefix=#{prefix}"
    system "make", "install"
  end

  def caveats; <<-EOS.undent
    Be aware that s3fs has some caveats concerning S3 "directories"
    that have been created by other tools. See the following issue for
    details:

      http://code.google.com/p/s3fs/issues/detail?id=73
    EOS
  end
end
