require "formula"

class Jhd < Formula
  #url "http://ftp.freebsd.org/pub/FreeBSD/ports/distfiles/jhd-2.3.tar.gz"
  url "http://pub.foc.jp/archives/slackware-alteration/sources/jhd-2.3.tar.gz"
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
