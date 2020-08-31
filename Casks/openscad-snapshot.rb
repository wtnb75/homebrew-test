cask 'openscad-snapshot' do
  version '2020.08.30'
  sha256 'f74efbf3cddd596d4387a718b0d0cea4e43aa48fe7d3b132084215d04cda8b03'

  url "https://files.openscad.org/snapshots/OpenSCAD-#{version}.dmg"
  #url "https://files.openscad.org/OpenSCAD-#{version}.dmg"
  name 'OpenSCAD'
  homepage 'http://www.openscad.org/'

  app 'OpenSCAD.app'
  binary "#{appdir}/OpenSCAD.app/Contents/MacOS/OpenSCAD", target: 'openscad'

  zap delete: [
                '~/Library/Caches/org.openscad.OpenSCAD',
                '~/Library/Preferences/org.openscad.OpenSCAD.plist',
                '~/Library/Saved Application State/org.openscad.OpenSCAD.savedState',
              ]
end
