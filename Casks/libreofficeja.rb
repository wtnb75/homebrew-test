cask :v1 => 'libreofficeja' do
  url 'http://download.documentfoundation.org/libreoffice/stable/4.4.0/mac/x86_64/LibreOffice_4.4.0_MacOS_x86-64_langpack_ja.dmg'
  homepage 'http://ja.libreoffice.org/'
  version '4.4.0'
  sha256 '5833c6139e6638104c883729938c042df61d5d60608573f49c08d6bccf6115b2'
  caveats do
    puts 'open LibreOffice_ja_Language_Pack.app'
  end
end
