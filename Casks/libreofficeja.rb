cask 'libreofficeja' do
  version '6.3.1'
  sha256 '47bef074088137ecb832eab7376f3fcac6108bf1898c6c93af6bee7576774cea'
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64_langpack_ja.dmg"
  homepage 'http://ja.libreoffice.org/'
  caveats do
    puts "open \"/usr/local/Caskroom/libreofficeja/#{version}/LibreOffice Language Pack.app\""
  end
end
