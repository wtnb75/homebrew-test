cask 'libreofficeja' do
  version '6.3.3'
  sha256 '8116827e30e1f310c2bfb371d328fd932ad96c443d3a63d8c21490857bfb0c29'
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64_langpack_ja.dmg"
  homepage 'http://ja.libreoffice.org/'
  caveats do
    puts "open \"/usr/local/Caskroom/libreofficeja/#{version}/LibreOffice Language Pack.app\""
  end
end
