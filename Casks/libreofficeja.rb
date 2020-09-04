cask 'libreofficeja' do
  version '7.0.1'
  sha256 '8efedd09f1d4e8833de230b31ac18dddf720b7dc55a788e7a09ebfa4e395fead'
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64_langpack_ja.dmg"
  homepage 'http://ja.libreoffice.org/'
  caveats do
    puts "open \"/usr/local/Caskroom/libreofficeja/#{version}/LibreOffice Language Pack.app\""
  end
end
