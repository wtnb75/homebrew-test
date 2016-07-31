require "formula"

class Gendiff < ScriptFileFormula
  url "http://rpm.org/gitweb?p=rpm.git;a=blob_plain;hb=refs/heads/rpm-4.11.x;f=scripts/gendiff", :using => :curl
  sha256 "f70c5834023253c85009f2f9e1374ddad946a035425342646b42c14b7b7e4106"
  version "4.11"
end
