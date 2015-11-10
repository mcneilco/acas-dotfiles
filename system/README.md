# OSX security likes to prevent environment variables, this works with > mavericks

## Installation
```
echo '
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
  <key>Label</key>
  <string>osx-env-sync</string>
  <key>ProgramArguments</key>
  <array>
    <string>bash</string>
    <string>-l</string>
    <string>-c</string>
    <string>
      $HOME/.dotfiles/system/.osx-env-sync.sh
    </string>
  </array>
  <key>RunAtLoad</key>
  <true/>
</dict>
</plist>

' > ~/Library/LaunchAgents/osx-env-sync.plist

chmod +x $HOME/.dotfiles/system/.osx-env-sync.sh
```

## To Load
launchctl load ~/Library/LaunchAgents/osx-env-sync.plist

## To Reload
launchctl unload ~/Library/LaunchAgents/osx-env-sync.plist
launchctl load ~/Library/LaunchAgents/osx-env-sync.plist
