cask 'openscad-snapshot' do
  version '2017.02.08'
  sha256 '2a8233bcf353a17b056aa60b52f07396b48db6b3a4585ff8eac49e23d0f2ac64'

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
