cask 'libreofficeja' do
  url 'http://download.documentfoundation.org/libreoffice/stable/5.1.0/mac/x86_64/LibreOffice_5.1.0_MacOS_x86-64_langpack_ja.dmg'
  homepage 'http://ja.libreoffice.org/'
  version '5.1.0'
  sha256 'f264562c5715e84b3a3c8fbffd08af061b3de0fdddf871017cf356d5d60ee6fd'
  caveats do
    puts 'open LibreOffice_ja_Language_Pack.app'
  end
end
