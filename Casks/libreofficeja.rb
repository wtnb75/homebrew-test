cask :v1 => 'libreofficeja' do
  url 'http://download.documentfoundation.org/libreoffice/stable/5.0.0/mac/x86_64/LibreOffice_5.0.0_MacOS_x86-64_langpack_ja.dmg'
  homepage 'http://ja.libreoffice.org/'
  version '5.0.0'
  sha256 '1b1a9bfb4b55853b2b8a26f9aaaf93eef201da8883174ca8568bd2396763672b'
  caveats do
    puts 'open LibreOffice_ja_Language_Pack.app'
  end
end
