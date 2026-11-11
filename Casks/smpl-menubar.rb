cask "smpl-menubar" do
  version "1.0.1"
  sha256 "a22a31cb323ab69aeb54c6544b1f2787cc3cff6b856e43e0550c5874ddb1d25b"

  url "https://github.com/TechSupportz/smpl-menubar/releases/download/v#{version}/smpl-menubar-#{version}-universal.zip"
  name "smpl.menubar"
  desc "Hide and arrange menu bar icons"
  homepage "https://github.com/TechSupportz/smpl-menubar"

  depends_on macos: :golden_gate

  app "smpl.menubar.app"

  uninstall quit: "com.tnitish.smpl-menubar"

  zap trash: [
    "~/Library/Application Support/smpl-menubar",
    "~/Library/Preferences/com.tnitish.smpl-menubar.plist",
  ]

  caveats <<~EOS
    Install in /Applications so macOS can display the menu bar item.
    Grant smpl.menubar Full Disk Access in System Settings > Privacy & Security.
    Quit the app before using --zap; zapping also removes its recovery backup.
  EOS
end
