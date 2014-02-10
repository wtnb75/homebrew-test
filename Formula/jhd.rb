require "formula"

class Jhd < Formula
  url "http://ftp.freebsd.org/pub/FreeBSD/ports/distfiles/jhd-2.3.tar.gz"
  sha1 "6df8f56185b5a079eb624cc6e16eabc767e94d47"

  def patches
    { :p0 => DATA }
  end
  def install
    system "mkdir", "-p", "#{prefix}/bin"
    system "make", "install", "DEST=#{prefix}/bin"
  end

  test do
    system "#{bin}/jhd", "#{bin}/jhd"
  end
end
__END__
--- Makefile.orig	2014-02-10 18:59:33.000000000 +0900
+++ Makefile	2014-02-10 18:59:44.000000000 +0900
@@ -1,4 +1,4 @@
-CFLAGS        = -O
+CFLAGS        = -O -Wno-implicit-function-declaration -Wno-return-type -Wno-implicit-int
 
 DEST	      = ${HOME}/bin
 
--- jhd.c.orig	1992-06-03 09:28:44.000000000 +0900
+++ jhd.c	2014-02-10 18:54:30.000000000 +0900
@@ -24,6 +24,8 @@
 #define  EUC     1        /*  if set, kanji code is EUC (Shift-JIS default)  */
 
 #include  <stdio.h>
+#include  <stdlib.h>
+#include  <string.h>
 #include  <ctype.h>
 
 #define  BSIZE      16384       /*  input buffer size */

