cask 'libreofficeja' do
  version '6.4.5'
  sha256 '527f905f503e156c18cbea7b66c89243b2ce5d90ed170b4cee6b2b39a2e31f81'
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64_langpack_ja.dmg"
  homepage 'http://ja.libreoffice.org/'
  caveats do
    puts "open \"/usr/local/Caskroom/libreofficeja/#{version}/LibreOffice Language Pack.app\""
  end
end
