cask :v1 => 'libreofficeja' do
  url 'http://download.documentfoundation.org/libreoffice/stable/4.4.2/mac/x86_64/LibreOffice_4.4.2_MacOS_x86-64_langpack_ja.dmg'
  homepage 'http://ja.libreoffice.org/'
  version '4.4.2'
  sha256 'f7294965385c398c5a04076e0306fa47003183a26bb1adcc9495a887613de0ed'
  caveats do
    puts 'open LibreOffice_ja_Language_Pack.app'
  end
end
