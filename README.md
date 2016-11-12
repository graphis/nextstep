# nextstep

cli commands for macos

Gatekeeper
~~~~
spctl --master-enable
spctl --master-disable
spctl --status
~~~~

Determine if an application is allowed
~~~~
spctl -a /Path/To/program.app
~~~~

## Approving Apps

To allow an app to run, we first assign it a label:
~~~~
spctl --add --label "ApprovedApps" /Applications/MyApp.app
~~~~

Next, we tell Gatekeeper that we want to approve all apps with the label ApprovedApps:
~~~~
spctl --enable --label "ApprovedApps"
~~~~

We can block the entire label by using --disable:
~~~~
spctl --disable --label "ApprovedApps"
~~~~

## Trim

Check if trim is enabled:
~~~~
system_profiler SPSerialATADataType | grep 'TRIM'
~~~~

~~~~
sudo trimforce enable
~~~~

~~~~
sudo trimforce disable
~~~~

## Utils

### Mounting EFI partition from terminal:
~~~~
sudo mkdir /Volumes/efi
sudo mount -t msdos /dev/disk0s1 /Volumes/efi
~~~~

### formatting:
~~~~
diskutil partitionDisk /dev/disk[disk number] 1 GPT HFS+J "MacOSDisk" R
~~~~

## Misc
### Rebuild Font Cache

Inatalling and removing fonts can corrupt a font cache, causing it to become slow over time. Rebuild the cache with the following terminal command.

~~~~
atsutil databases -remove
~~~~

### Disable window animations
~~~~
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false
~~~~





### x
~~~~
x
~~~~

#### opening and closing windows and popovers
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false

#### smooth scrolling
defaults write -g NSScrollAnimationEnabled -bool false

# showing and hiding sheets, resizing preference windows, zooming windows
#### float 0 doesn't work
defaults write -g NSWindowResizeTime -float 0.001

#### opening and closing Quick Look windows
defaults write -g QLPanelAnimationDuration -float 0

#### rubberband scrolling (doesn't affect web views)
defaults write -g NSScrollViewRubberbanding -bool false

#### resizing windows before and after showing the version browser also disabled by NSWindowResizeTime -float 0.001
defaults write -g NSDocumentRevisionsWindowTransformAnimation -bool false

#### showing a toolbar or menu bar in full screen
defaults write -g NSToolbarFullScreenAnimationDuration -float 0

#### scrolling column views
defaults write -g NSBrowserColumnAnimationSpeedMultiplier -float 0

#### showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0
defaults write com.apple.dock autohide-delay -float 0

#### showing and hiding Mission Control, command+numbers
defaults write com.apple.dock expose-animation-duration -float 0

#### showing and hiding Launchpad
defaults write com.apple.dock springboard-show-duration -float 0
defaults write com.apple.dock springboard-hide-duration -float 0

#### changing pages in Launchpad
defaults write com.apple.dock springboard-page-duration -float 0

#### at least AnimateInfoPanes
defaults write com.apple.finder DisableAllAnimations -bool true

#### sending messages and opening windows for replies
defaults write com.apple.Mail DisableSendAnimations -bool true
defaults write com.apple.Mail DisableReplyAnimations -bool true
