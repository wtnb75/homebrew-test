cask 'livediag' do
  version '1.2.2'
  sha256 '168e4b751be6d3a755bba65ec9c9e796464bcded0c49a42d9ae8942e749097a3'
  url "https://github.com/dataich/LiveDiag/releases/download/#{version}/LiveDiag.app.zip"
  name 'LiveDiag'
  homepage 'http://dataich.github.io/LiveDiag/'
  app 'LiveDiag.app'
end
