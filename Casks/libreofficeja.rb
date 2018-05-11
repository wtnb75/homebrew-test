cask 'libreofficeja' do
  version '6.0.4'
  sha256 '2c0633fcaeffeec34a0d9570f67165a3bed7c64934cbcedaff662fd0a26e5fc8'
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64_langpack_ja.dmg"
  homepage 'http://ja.libreoffice.org/'
  caveats do
    puts "open \"/usr/local/Caskroom/libreofficeja/#{version}/LibreOffice Language Pack.app\""
  end
end
