cask 'libreofficeja' do
  version '6.0.6'
  sha256 '94d39d92160794fc1e8b4812d774ee3e203f7f2ec19064285b2309be5553453d'
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64_langpack_ja.dmg"
  homepage 'http://ja.libreoffice.org/'
  caveats do
    puts "open \"/usr/local/Caskroom/libreofficeja/#{version}/LibreOffice Language Pack.app\""
  end
end
