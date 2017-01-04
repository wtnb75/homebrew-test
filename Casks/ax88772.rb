cask 'ax88772' do
  version '2.4.1_20160912'
  sha256 '620e06928e190e6703edfe771f9b44e9814a9f9ff9b2c7b2d0edad0948c1e22b'

  module Utils
    def self.basename(version)
      "AX88772C_772B_772A_760_772_Macintosh_10.5_to_10.12_Driver_Installer_v#{version}"
    end
  end

  url "http://www.asix.com.tw/FrootAttach/driver/#{Utils.basename(version)}.zip"
  name 'AX88772'
  homepage 'http://www.asix.com.tw/download.php?sub=driverdetail&PItemID=105'

  pkg "AX88772_#{version.sub(%r{_.*}, '')}.pkg"

  # HACK: DMG needs to be extracted manually because it is using an MBR partition table.
  preflight do
    begin
      dmg_mount = `/usr/bin/hdiutil mount -readonly -noidme -nobrowse -mountrandom /tmp '#{staged_path.join(Utils.basename(version), 'AX88772.dmg')}' | /usr/bin/cut -f3 -- - | /usr/bin/grep -- '.' -`.chop
      FileUtils.cp(Dir.glob("#{dmg_mount}/AX*"), staged_path)
    ensure
      system "/usr/bin/hdiutil eject '#{dmg_mount}' >/dev/null 2>&1"
    end
  end

  postflight do
    system '/usr/bin/sudo', '-E', '--',
           '/sbin/kextload', '-b', 'com.asix.driver.ax88772'
  end

  uninstall early_script: {
                            executable: "#{staged_path}/AX88772C_772B_772A_760_772_Uninstall_v130",
                            sudo:       false,
                          },
            kext:         'com.asix.driver.ax88772',
            pkgutil:      'com.asix.pkg.ax88772*'
end
