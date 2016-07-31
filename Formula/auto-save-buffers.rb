require "formula"

class AutoSaveBuffers < Formula
  homepage "http://0xcc.net/misc/auto-save/"
  url "http://0xcc.net/misc/auto-save/auto-save-buffers.el"
  sha256 "34fc53dd321605c8b8f61b118a1939874289084690fe21504b364e46c34d4225"

  depends_on 'emacs'

  def install
    system "mkdir", "-p", "#{prefix}/share/emacs/site-lisp/"
    system "cp", "auto-save-buffers.el", "#{prefix}/share/emacs/site-lisp/"
  end
end
