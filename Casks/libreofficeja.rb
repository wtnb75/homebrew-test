cask 'libreofficeja' do
  version '5.3.4'
  sha256 '65865836b82e6f2325de6bb6a42537e616d88d6cb27a47ca05a88581686803ac'
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64_langpack_ja.dmg"
  homepage 'http://ja.libreoffice.org/'
  caveats do
    puts "open \"/usr/local/Caskroom/libreofficeja/#{version}/LibreOffice Language Pack.app\""
  end
end
