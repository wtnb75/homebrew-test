require "formula"

class Jhd < Formula
  url "http://distcache.freebsd.org/ports-distfiles/jhd-2.3.tar.gz"
  #url "http://pub.foc.jp/archives/slackware-alteration/sources/jhd-2.3.tar.gz"
  sha256 "2d66d22e4de169d37cadcb972209cf80f0301412d56089a97ecd6f81eb2da478"

  patch :p0 do
    url "https://gist.githubusercontent.com/wtnb75/ba38dc724b836b189f0f7493ffeb88d7/raw/8a61e4f62626bac63761008a447202ad81f767f6/jhd-mac.patch"
    sha256 "7ab4555e2b0390b9dceb29976cdff688d4ec0d652f217943e9c01a87d7543628"
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
--- Makefile.orig	2015-10-03 00:58:40.000000000 +0900
+++ Makefile	2015-10-03 00:59:13.000000000 +0900
@@ -1,4 +1,4 @@
-CFLAGS        = -O
+CFLAGS        = -O -Wno-implicit-function-declaration -Wno-return-type -Wno-implicit-int
 
 DEST	      = ${HOME}/bin
 
@@ -47,5 +47,3 @@
 
 $(DEST)/$(PROGRAM): $(SRCS) $(LIBS) $(HDRS) $(EXTHDRS)
 		@make -f $(MAKEFILE) DEST=$(DEST) install
-###
-jhd.o: /usr/include/stdio.h /usr/include/ctype.h
--- jhd.c.orig	2015-10-03 00:58:45.000000000 +0900
+++ jhd.c	2015-10-03 00:59:28.000000000 +0900
@@ -24,6 +24,8 @@
 #define  EUC     1        /*  if set, kanji code is EUC (Shift-JIS default)  */
 
 #include  <stdio.h>
+#include  <stdlib.h>
+#include  <string.h>
 #include  <ctype.h>
 
 #define  BSIZE      16384       /*  input buffer size */
