require "formula"

class Gendiff < Formula
  version "4.14.0"
  url "https://raw.githubusercontent.com/rpm-software-management/rpm/rpm-#{version}-release/scripts/gendiff"
  sha256 "60a202b6462994e770623593e8903ba9e6ab5b9abc1a5b32e088a6f44ecb0982"
  head "https://github.com/rpm-software-management/rpm.git", :branch => "dev"

  def install
    bin.install "gendiff" => "gendiff"
  end
end
