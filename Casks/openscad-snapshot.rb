cask 'openscad-snapshot' do
  version '2019.05'
  sha256 'df6f6f3d34ac0d07f533ec4ccf59082189fb37c0276c1b8df651291e2509420e'

  #url "http://files.openscad.org/snapshots/OpenSCAD-#{version}.dmg"
  url "https://files.openscad.org/OpenSCAD-#{version}.dmg"
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
