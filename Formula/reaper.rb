class Reaper < Formula
  desc "REAPER: Robust Epoch And Pitch EstimatoR"
  homepage "https://github.com/google/REAPER"
  url "https://github.com/google/REAPER.git"
  head "https://github.com/google/REAPER.git"
  version "master"

  depends_on "cmake" => :build

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make"
      bin.install "reaper"
    end
  end
end
