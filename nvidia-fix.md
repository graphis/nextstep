As of macOS Sierra, nvda_drv=1 in config.plist under Boot > Arguments is no longer working to initiate drivers. Clover has been updated with a new System Parameter setting called NvidiaWeb.

There's a new method for enabling the NVIDIA Web Drivers in the latest versions of Clover (r3751+). It can be turned on and off by editing /Volumes/EFI/EFI/CLOVER/config.plist to add SystemParameters/NvidiaWeb. This parameter takes the place of nvda_drv=1 boot flag, which may not work in macOS Sierra.

1. Mount EFI Partition
2. Open /Volumes/EFI/EFI/CLOVER/config.plist with text edit, Xcode, or Plist Editor Pro
3. Edit as shown below:

Code (Text):
```
<key>SystemParameters</key>
    <dict>
        <key>InjectKexts</key>
        <string>YES</string>
        <key>InjectSystemID</key>
        <true/>
        <key>NvidiaWeb</key>
        <true/>
    </dict>
```

4. Remove Boot/Arguments/nvda_drv=1 if necessary
5. Save and reboot
