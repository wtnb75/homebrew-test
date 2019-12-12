cask 'libreofficeja' do
  version '6.3.4'
  sha256 '44af4897572c6063167178f98b34d1c3a19b4ff34a44351f9e61074cfbfc7d1c'
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64_langpack_ja.dmg"
  homepage 'http://ja.libreoffice.org/'
  caveats do
    puts "open \"/usr/local/Caskroom/libreofficeja/#{version}/LibreOffice Language Pack.app\""
  end
end
