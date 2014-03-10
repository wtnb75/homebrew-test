require "formula"

class AutoSaveBuffers < Formula
  homepage "http://0xcc.net/misc/auto-save/"
  url "http://0xcc.net/misc/auto-save/auto-save-buffers.el"
  sha1 "29285b108ce17f7dee5d1d92a06ea372fdc119aa"

  def install
    system "mkdir", "-p", "#{prefix}/share/emacs/site-lisp/"
    system "cp", "auto-save-buffers.el", "#{prefix}/share/emacs/site-lisp/"
  end
end
