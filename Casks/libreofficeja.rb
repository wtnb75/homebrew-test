cask 'libreofficeja' do
  version '6.3.0'
  sha256 '51438ce23f3242fe1e3374b05ef3415f36068247ece7f4b7bc6689b1a74695a3'
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64_langpack_ja.dmg"
  homepage 'http://ja.libreoffice.org/'
  caveats do
    puts "open \"/usr/local/Caskroom/libreofficeja/#{version}/LibreOffice Language Pack.app\""
  end
end
