cask 'libreofficeja' do
  url 'http://download.documentfoundation.org/libreoffice/stable/5.2.4/mac/x86_64/LibreOffice_5.2.4_MacOS_x86-64_langpack_ja.dmg'
  homepage 'http://ja.libreoffice.org/'
  version '5.2.4'
  sha256 'a154d37ab0daa44c95b9fa478c847910e69a45eba8d73d37d843ac759217c52a'
  caveats do
    puts 'open LibreOffice_ja_Language_Pack.app'
  end
end
