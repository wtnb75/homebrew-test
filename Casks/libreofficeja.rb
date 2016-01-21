cask 'libreofficeja' do
  url 'http://download.documentfoundation.org/libreoffice/stable/5.0.4/mac/x86_64/LibreOffice_5.0.4_MacOS_x86-64_langpack_ja.dmg'
  homepage 'http://ja.libreoffice.org/'
  version '5.0.4'
  sha256 'da2299abec38d226669d6ae3c9bb2c409d25187802c87de1a5b6f79dcd2b96da'
  caveats do
    puts 'open LibreOffice_ja_Language_Pack.app'
  end
end
