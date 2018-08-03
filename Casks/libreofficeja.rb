cask 'libreofficeja' do
  version '6.0.6'
  sha256 '1ea366e19635570ecb6427e8723f0e7e475b337f8cfca976648e5720c59dc3c7'
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64_langpack_ja.dmg"
  homepage 'http://ja.libreoffice.org/'
  caveats do
    puts "open \"/usr/local/Caskroom/libreofficeja/#{version}/LibreOffice Language Pack.app\""
  end
end
