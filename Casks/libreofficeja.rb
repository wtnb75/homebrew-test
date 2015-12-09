cask :v1 => 'libreofficeja' do
  url 'http://download.documentfoundation.org/libreoffice/stable/5.0.3/mac/x86_64/LibreOffice_5.0.3_MacOS_x86-64_langpack_ja.dmg'
  homepage 'http://ja.libreoffice.org/'
  version '5.0.3'
  sha256 'b593e14aca4d9463e73b9c5d4ee7157379beca259e0012f8675096b497ad520e'
  caveats do
    puts 'open LibreOffice_ja_Language_Pack.app'
  end
end
