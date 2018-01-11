cask 'libreofficeja' do
  version '5.4.4'
  sha256 '8c789b24240c2ba20dcf665558c5a6ff7443a3ecc4015ed95daa620a6fa17bbc'
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64_langpack_ja.dmg"
  homepage 'http://ja.libreoffice.org/'
  caveats do
    puts "open \"/usr/local/Caskroom/libreofficeja/#{version}/LibreOffice Language Pack.app\""
  end
end
