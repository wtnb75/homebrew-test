class Libreofficeja < Cask
  url 'http://download.documentfoundation.org/libreoffice/stable/4.2.1/mac/x86/LibreOffice_4.2.1_MacOS_x86_langpack_ja.dmg'
  homepage 'http://ja.libreoffice.org/'
  version '4.2.1'
  sha256 '1334076aad80572b35af1cc730575ed8f48fdb794d50bb3458ce6aa4cfeb8dbe'
  caveats do
    manual_installer 'LibreOffice_ja_Language_Pack.app'
  end
end
