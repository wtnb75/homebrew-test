class Libreofficeja < Cask
  url 'http://download.documentfoundation.org/libreoffice/stable/4.2.3/mac/x86/LibreOffice_4.2.3_MacOS_x86_langpack_ja.dmg'
  homepage 'http://ja.libreoffice.org/'
  version '4.2.3'
  sha256 'ac2ca1f14cf15effee3aa3d795eacb26dd39b3f0a5a64b959f27aaec34f4b62b'
  caveats do
    manual_installer 'LibreOffice_ja_Language_Pack.app'
  end
end
