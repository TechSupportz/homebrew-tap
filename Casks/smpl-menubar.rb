cask "smpl-menubar" do
  version "1.2.0"
  sha256 "a8aef065d962ba9a7805d2580e3e9adba4a2db3c24da2db7a64adae0d3ffc1d9"

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
