cask 'libreofficeja' do
  version '6.0.3'
  sha256 '59a99ecdb18aa3f48ba9d6463dec0a4c8b047c99fd893b6ebeb4b617e1979b93'
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64_langpack_ja.dmg"
  homepage 'http://ja.libreoffice.org/'
  caveats do
    puts "open \"/usr/local/Caskroom/libreofficeja/#{version}/LibreOffice Language Pack.app\""
  end
end
