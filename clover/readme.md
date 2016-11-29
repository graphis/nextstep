nvidia gpu was not recognised

fix
<key>NvidiaWeb</key>
<true/>

//
Many MacOs Sierra Users have been facing an issue with nvidia web driver on usage of nvda_drv=1.This issue arises because macOs Sierra doesn’t accept nvda_drv=1 as a valid boot flag .You can fix this issue with the following steps

1.Install MacOs Sierra using this  guide /http://osxarena.com/2016/09/install-macos-sierra-hackintosh-pc-vanilla-installation-method/
or update your old mac to MacOs Sierra with this guide /http://osxarena.com/2016/09/direct-update-macos-sierra-old-mac-osx-hackintosh/

2. Install NVIDIA web driver for macOs Sierra

3.Open the clover config.plist file in text editor  [ /Volumes/EFI/EFI/CLOVER/config.plist  ]or Clover configurator (latest version )

4. Add the below keys to the config file :

<key>SystemParameters</key>
<dict>
<key>InjectKexts</key>
<string>YES</string>
<key>InjectSystemID</key>
<true/>
<key>NvidiaWeb</key>
<true/>
</dict>

3. Reboot your system






http://osxarena.com/2016/09/direct-update-macos-sierra-old-mac-osx-hackintosh/
http://osxarena.com/2016/09/install-macos-sierra-hackintosh-pc-vanilla-installation-method/
http://osxarena.com/2016/09/fix-nvidia-web-driver-issue-macos-serria/
https://www.reddit.com/r/hackintosh/comments/55oq0h/help_h170nwifi_sierra_installation/
