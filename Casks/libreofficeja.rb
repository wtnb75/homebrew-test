cask 'libreofficeja' do
  version '7.0.4'
  sha256 '0f4e8b674b71776fa8a7ca01de0df732cb8cf3a3e48a8dc30d4f6f88b376258c'
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64_langpack_ja.dmg"
  homepage 'http://ja.libreoffice.org/'
  caveats do
    puts "open \"/usr/local/Caskroom/libreofficeja/#{version}/LibreOffice Language Pack.app\""
  end
end
