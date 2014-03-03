require "formula"

class Randgen < Formula
  url "https://gist.githubusercontent.com/wtnb75/8836dac904f53dcff7dc/raw/d54b3303cd658761b150fce763f45155345397cc/randgen.c"
  sha1 "943e3f75da8e9d932f907c3e8538b25b79c87912"
  version "0.0.0"

  def install
    system "tail -n4 randgen.c | sed -e 's/wget/curl -O/g;' | cut -f2- -d' ' | sh -x"
    bin.install 'randgen-x86_64', 'randgen-x86_64-sse2'
  end
end
