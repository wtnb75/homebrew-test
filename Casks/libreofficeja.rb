cask 'libreofficeja' do
  version '5.2.4'
  sha256 '9e33105526ed0ff1f74164b4de9d26363cca223b6e9b6c250ed9f70c17c0967d'
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64_langpack_ja.dmg"
  homepage 'http://ja.libreoffice.org/'
  caveats do
    puts 'open LibreOffice_ja_Language_Pack.app'
  end
end
