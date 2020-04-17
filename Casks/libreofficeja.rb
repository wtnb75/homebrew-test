cask 'libreofficeja' do
  version '6.4.3'
  sha256 'fc6d2efde0982e46249f438e941f139edf5dd0b07a4a3d970365d5e7fa7f1de9'
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64_langpack_ja.dmg"
  homepage 'http://ja.libreoffice.org/'
  caveats do
    puts "open \"/usr/local/Caskroom/libreofficeja/#{version}/LibreOffice Language Pack.app\""
  end
end
