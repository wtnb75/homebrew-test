cask 'libreofficeja' do
  version '7.0.3'
  sha256 '0bb3897d176ca8e49a04fa6d6a98c602f0c0cbbec2dfffcfdc45754e699143d2'
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64_langpack_ja.dmg"
  homepage 'http://ja.libreoffice.org/'
  caveats do
    puts "open \"/usr/local/Caskroom/libreofficeja/#{version}/LibreOffice Language Pack.app\""
  end
end
