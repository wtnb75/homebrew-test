cask :v1 => 'libreofficeja' do
  url 'http://download.documentfoundation.org/libreoffice/stable/4.3.0/mac/x86/LibreOffice_4.3.0_MacOS_x86_langpack_ja.dmg'
  homepage 'http://ja.libreoffice.org/'
  version '4.3.0'
  sha256 '6c8b7467bcf2fcf369e24e5f814a840df261f141368d440b95520b532f437a89'
  caveats do
    manual_installer 'LibreOffice_ja_Language_Pack.app'
  end
end
