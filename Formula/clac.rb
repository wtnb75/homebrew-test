require "formula"

class Clac < Formula
  homepage "http://clac.sourceforge.net/"
  url "http://downloads.sourceforge.net/project/clac/clac.005?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fclac%2Ffiles%2F%3Fsource%3Dnavbar&ts=1394715003&use_mirror=jaist", :using => :curl
  sha256 "4b6e79c813f44ac37d8f0fbd457f6bf53c68344c3558854e81d3b93875ba30a7"
  version "005"

  def install
    system "mkdir", "-p", "#{prefix}/bin"
    system "cp", "clac.005", "#{prefix}/bin/clac"
  end
end
