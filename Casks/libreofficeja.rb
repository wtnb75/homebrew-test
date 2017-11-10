cask 'libreofficeja' do
  version '5.4.3'
  sha256 'adeb89c2fc84fa429ea030173461c964d06a8e7795d7f8e5bee7c9512c7d9d5a'
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64_langpack_ja.dmg"
  homepage 'http://ja.libreoffice.org/'
  caveats do
    puts "open \"/usr/local/Caskroom/libreofficeja/#{version}/LibreOffice Language Pack.app\""
  end
end
