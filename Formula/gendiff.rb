require "formula"

class Gendiff < ScriptFileFormula
  url "http://rpm.org/gitweb?p=rpm.git;a=blob_plain;hb=refs/heads/rpm-4.11.x;f=scripts/gendiff", :using => :curl
  sha1 "7c4600a709e965faa8b87d1e779cfe217f5b6e4e"
  version "4.11"
end
