cask 'openscad-snapshot' do
  version '2018.03.17'
  sha256 '58330d5118ec921b3ed930adfb35e90fdaa30afc25930f85cc102fdf255112aa'

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
