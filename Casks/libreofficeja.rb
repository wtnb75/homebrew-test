cask 'libreofficeja' do
  version '7.0.0'
  sha256 '4ae91ed65064006a6f81781425c12d0d9feefaa74fbe2e84710e045bb78b0e18'
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64_langpack_ja.dmg"
  homepage 'http://ja.libreoffice.org/'
  caveats do
    puts "open \"/usr/local/Caskroom/libreofficeja/#{version}/LibreOffice Language Pack.app\""
  end
end
