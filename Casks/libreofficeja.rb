class Libreofficeja < Cask
  url 'http://download.documentfoundation.org/libreoffice/stable/4.2.4/mac/x86/LibreOffice_4.2.4_MacOS_x86_langpack_ja.dmg'
  homepage 'http://ja.libreoffice.org/'
  version '4.2.4'
  sha256 '934e48e01aad94c4459f45cbeed19e1b67aced90ed77ac14d62b4615890b7ccd'
  caveats do
    manual_installer 'LibreOffice_ja_Language_Pack.app'
  end
end
