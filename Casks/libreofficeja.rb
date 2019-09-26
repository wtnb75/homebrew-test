cask 'libreofficeja' do
  version '6.3.2'
  sha256 '141e456e8eb07f9ab97448961f694c449a70bd39fdf2172e9fea041fea91907c'
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64_langpack_ja.dmg"
  homepage 'http://ja.libreoffice.org/'
  caveats do
    puts "open \"/usr/local/Caskroom/libreofficeja/#{version}/LibreOffice Language Pack.app\""
  end
end
