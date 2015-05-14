cask :v1 => 'libreofficeja' do
  url 'http://download.documentfoundation.org/libreoffice/stable/4.4.3/mac/x86_64/LibreOffice_4.4.3_MacOS_x86-64_langpack_ja.dmg'
  homepage 'http://ja.libreoffice.org/'
  version '4.4.3'
  sha256 'b5c693e8c1024f0209bc65349e53d536f39073878397ac180b5302f60d036d09'
  caveats do
    puts 'open LibreOffice_ja_Language_Pack.app'
  end
end
