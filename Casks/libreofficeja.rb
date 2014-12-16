cask :v1 => 'libreofficeja' do
  url 'http://download.documentfoundation.org/libreoffice/stable/4.3.4/mac/x86/LibreOffice_4.3.4_MacOS_x86_langpack_ja.dmg'
  homepage 'http://ja.libreoffice.org/'
  version '4.3.4'
  sha256 '24dff2bddfb16dbe38ea1b1fb50e7f23762b6e2969488c34bfd481ae52ad5bf7'
  caveats do
    puts 'open LibreOffice_ja_Language_Pack.app'
  end
end
