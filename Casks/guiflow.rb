cask 'guiflow' do
  version '0.1.1'
  sha256 'f3d4ab8280d8b0ac6c99175a9993c8f13aefd15f09e6a2bbb28b5c5d0ca4ebc5'
  url "https://github.com/hirokidaichi/guiflow/releases/download/v_#{version}/guiflow-darwin.zip"
  name 'guiflow'
  homepage 'https://github.com/hirokidaichi/guiflow'
  app 'guiflow-darwin-x64/guiflow.app'
end
