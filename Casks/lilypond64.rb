cask 'lilypond64' do
  version '2.20.0'
  build = 'build20200311175017'
  sha256 '655bb00970279ae72d3c7dfe19186db9025f0cb5eae7e3c4485c1b3b1116bc69'
  url "https://bintray.com/marnen/lilypond-darwin-64/download_file?file_path=lilypond-#{version}.#{build}-darwin-64.tar.gz"
  name 'lilypond'
  homepage 'https://lilypond.org/'
  app 'LilyPond.app'
end
