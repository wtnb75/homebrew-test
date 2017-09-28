cask 'libreofficeja' do
  version '5.4.1'
  sha256 'bb817dfceb479146186f718dc2cd3ffda7ebee5e375986bebf2ad4715514f9ff'
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64_langpack_ja.dmg"
  homepage 'http://ja.libreoffice.org/'
  caveats do
    puts "open \"/usr/local/Caskroom/libreofficeja/#{version}/LibreOffice Language Pack.app\""
  end
end
