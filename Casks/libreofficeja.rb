cask 'libreofficeja' do
  version '6.2.5'
  sha256 '225cf15d9686d09a88947197afe5a5632dd92ce734e985c7d09be48fde591816'
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64_langpack_ja.dmg"
  homepage 'http://ja.libreoffice.org/'
  caveats do
    puts "open \"/usr/local/Caskroom/libreofficeja/#{version}/LibreOffice Language Pack.app\""
  end
end
