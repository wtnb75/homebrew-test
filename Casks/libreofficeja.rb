cask 'libreofficeja' do
  url 'http://download.documentfoundation.org/libreoffice/stable/5.1.4/mac/x86_64/LibreOffice_5.1.4_MacOS_x86-64_langpack_ja.dmg'
  homepage 'http://ja.libreoffice.org/'
  version '5.1.4'
  sha256 'db194b6f738616fa0466ced76920495b547dba5ec9dc3c6c56aa69f40e99b29f'
  caveats do
    puts 'open LibreOffice_ja_Language_Pack.app'
  end
end
