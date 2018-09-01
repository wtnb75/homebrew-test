cask 'openscad-snapshot' do
  version '2018.03.17'
  sha256 'd4d361c673683cda3195d4c84696020023c56c4db46d4a5efff0ab5d4922d55f'

  url "http://files.openscad.org/snapshots/OpenSCAD-#{version}.dmg"
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
