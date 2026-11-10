cask "smpl-menubar" do
  version "1.0.0"
  sha256 "124cb180b68be94bc31461f4dae5f1146d5c5f071f3a9423a5bab99fddd7c19a"

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
