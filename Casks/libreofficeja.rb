cask 'libreofficeja' do
  version '7.1.2'
  sha256 'fd30ed372dbaaf84b4f8870d2cadefb4f2696a0e5ffef9729105356ffea554fb'
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64_langpack_ja.dmg"
  homepage 'http://ja.libreoffice.org/'
  caveats do
    puts "open \"/usr/local/Caskroom/libreofficeja/#{version}/LibreOffice Language Pack.app\""
  end
end
