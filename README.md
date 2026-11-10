# TechSupportz Homebrew tap

## smpl.menubar

A small, free, open-source menu bar app. Requires macOS 27 or later.

```sh
brew install --cask --appdir=/Applications TechSupportz/tap/smpl-menubar
open /Applications/smpl.menubar.app
```

Grant **Full Disk Access** in System Settings → Privacy & Security when prompted.
The app must be in `/Applications` for macOS 27 to display its menu bar item.
Releases are Developer ID signed and notarized.

```sh
brew upgrade --cask smpl-menubar
brew uninstall --cask smpl-menubar
```

Normal uninstall keeps settings and recovery backups. To remove those too, first
quit the app to restore hidden icons, then use `brew uninstall --cask --zap
smpl-menubar`. Zapping removes the recovery backup as well.

[Source and releases](https://github.com/TechSupportz/smpl-menubar)

## Maintaining the cask

After publishing a new app release with the app repository's `scripts/publish.sh`,
copy `dist/VERSION/smpl-menubar.rb` into `Casks/`, then run:

```sh
brew style --cask Casks/smpl-menubar.rb
brew audit --cask --online TechSupportz/tap/smpl-menubar
```

Review the version, URL and SHA-256 changes, then commit and push. Never overwrite
published release archives or use `sha256 :no_check`.
