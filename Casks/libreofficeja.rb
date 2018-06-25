cask 'libreofficeja' do
  version '6.0.5'
  sha256 '1689138a3149b1c97f3da282901bb8d6826e87d68e173dc19bc7636cb0b35dc8'
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64_langpack_ja.dmg"
  homepage 'http://ja.libreoffice.org/'
  caveats do
    puts "open \"/usr/local/Caskroom/libreofficeja/#{version}/LibreOffice Language Pack.app\""
  end
end
