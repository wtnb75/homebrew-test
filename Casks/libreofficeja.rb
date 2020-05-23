cask 'libreofficeja' do
  version '6.4.4'
  sha256 '4c150340d0477ed1ea887a5ceacd655f4a93ba79bbdc87732c426b2bcfb34e1a'
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64_langpack_ja.dmg"
  homepage 'http://ja.libreoffice.org/'
  caveats do
    puts "open \"/usr/local/Caskroom/libreofficeja/#{version}/LibreOffice Language Pack.app\""
  end
end
