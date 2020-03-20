cask 'libreofficeja' do
  version '6.4.2'
  sha256 '27e0c6fa09a6c5ac747b85e2c0fd1d3d8383ee7ef2191b6fe5d13d2d3bdb140e'
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64_langpack_ja.dmg"
  homepage 'http://ja.libreoffice.org/'
  caveats do
    puts "open \"/usr/local/Caskroom/libreofficeja/#{version}/LibreOffice Language Pack.app\""
  end
end
