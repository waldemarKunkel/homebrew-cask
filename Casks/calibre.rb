cask 'calibre' do
  if MacOS.version <= '10.8'
    version '2.85.1'
    sha256 '07e7802e14fdd22c1ac6d46a8035940765a19172294efab3c7d553b10eecf743'
    url "https://download.calibre-ebook.com/#{version}/calibre-#{version}.dmg"
  elsif MacOS.version <= :high_sierra
    version '3.48.0'
    sha256 '68829cd902b8e0b2b7d5cf7be132df37bcc274a1e5720b4605d2dd95f3a29168'
    url "https://download.calibre-ebook.com/#{version}/calibre-#{version}.dmg"
  else
    version '4.4.0'
    sha256 '7813f6a502a3c33e98d732adb08131c2e39795f7c229d218f006fb5fe2b5b65f'
    url "https://download.calibre-ebook.com/#{version}/calibre-#{version}.dmg"
    appcast 'https://github.com/kovidgoyal/calibre/releases.atom'
  end

  name 'calibre'
  homepage 'https://calibre-ebook.com/'

  app 'calibre.app'
  binary "#{appdir}/calibre.app/Contents/MacOS/calibre"
  binary "#{appdir}/calibre.app/Contents/MacOS/calibre-complete"
  binary "#{appdir}/calibre.app/Contents/MacOS/calibre-customize"
  binary "#{appdir}/calibre.app/Contents/MacOS/calibre-debug"
  binary "#{appdir}/calibre.app/Contents/MacOS/calibre-parallel"
  binary "#{appdir}/calibre.app/Contents/MacOS/calibre-server"
  binary "#{appdir}/calibre.app/Contents/MacOS/calibre-smtp"
  binary "#{appdir}/calibre.app/Contents/MacOS/calibredb"
  binary "#{appdir}/calibre.app/Contents/MacOS/ebook-convert"
  binary "#{appdir}/calibre.app/Contents/MacOS/ebook-device"
  binary "#{appdir}/calibre.app/Contents/MacOS/ebook-edit"
  binary "#{appdir}/calibre.app/Contents/MacOS/ebook-meta"
  binary "#{appdir}/calibre.app/Contents/MacOS/ebook-polish"
  binary "#{appdir}/calibre.app/Contents/MacOS/ebook-viewer"
  binary "#{appdir}/calibre.app/Contents/MacOS/fetch-ebook-metadata"
  binary "#{appdir}/calibre.app/Contents/MacOS/lrf2lrs"
  binary "#{appdir}/calibre.app/Contents/MacOS/lrfviewer"
  binary "#{appdir}/calibre.app/Contents/MacOS/lrs2lrf"
  binary "#{appdir}/calibre.app/Contents/MacOS/markdown-calibre"
  binary "#{appdir}/calibre.app/Contents/MacOS/web2disk"

  zap trash: [
               '~/Library/Caches/calibre',
               '~/Library/Preferences/calibre',
               '~/Library/Preferences/net.kovidgoyal.calibre.plist',
               '~/Library/Saved Application State/com.calibre-ebook.ebook-viewer.savedState',
               '~/Library/Saved Application State/net.kovidgoyal.calibre.savedState',
             ]
end
