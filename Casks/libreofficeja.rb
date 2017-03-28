cask 'libreofficeja' do
  version '5.3.1'
  sha256 'fd7ea0da2b47e3ba3b5910f4b5bd0b3b5ecfc5e0be582459788c7bedeabbb876'
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64_langpack_ja.dmg"
  homepage 'http://ja.libreoffice.org/'
  caveats do
    puts 'open LibreOffice_ja_Language_Pack.app'
  end
end
