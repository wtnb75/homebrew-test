require "formula"

class Pdfcrop < Formula
  version "0.4b"
  url "https://jaist.dl.sourceforge.net/project/pdfcrop/pdfcrop/PDFCrop%20v#{version}/pdfcrop_v#{version}.tar.gz"
  sha256 "090995ebbe02e9ce8868945b506103583c52f42c8946e2e12db8b8c5ed75467d"

  def install
    bin.install "pdfcrop"
  end
end
