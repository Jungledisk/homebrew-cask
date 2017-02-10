cask 'jungledisk-server' do
  version '3.20.0'
  sha256 '9d86800a36e2d96af199071684470986dd3773fb3c209f80b2db443ce98c0b6a'

  url "https://downloads.jungledisk.com/jungledisk/JungleDiskServerManagement#{version.no_dots}.dmg"
  appcast 'https://services.jungledisk.com/updatecheck.aspx',
          checkpoint: '359d56d22543c5c883cf7d2139a55a26ac385e50cbf09ff4361dd9b2f40d7369'
  name 'JungleDisk Server Manager'
  homepage 'https://www.jungledisk.com'

  auto_updates true

  app 'Jungle Disk Server Management.app'

  zap delete: ['~/Library/Application Support/JungleDiskMonitor/']
end
