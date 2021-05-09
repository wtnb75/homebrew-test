cask 'libreofficeja' do
  version '7.1.3'
  sha256 'e69f7422a8c0d8719b0c6f9121a5a18603c5adc7ee287c12ab3cd4c8e3cf6fb0'
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64_langpack_ja.dmg"
  homepage 'http://ja.libreoffice.org/'
  caveats do
    puts "open \"/usr/local/Caskroom/libreofficeja/#{version}/LibreOffice Language Pack.app\""
  end
end
