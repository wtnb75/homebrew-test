cask 'libreofficeja' do
  version '5.4.2'
  sha256 '61093ad0847285c91e148372e5992fee4cab943e7dfbab16d3ff238a7e80bd14'
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64_langpack_ja.dmg"
  homepage 'http://ja.libreoffice.org/'
  caveats do
    puts "open \"/usr/local/Caskroom/libreofficeja/#{version}/LibreOffice Language Pack.app\""
  end
end
