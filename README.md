# nextstep

https://www.youtube.com/watch?v=wyN3DYsjdB8



https://www.tonymacx86.com/threads/sierra-desktop-realtek-applehda-audio.197923/




sudo pmset -a hibernatemode 0
sudo rm /var/vm/sleepimage
sudo mkdir /var/vm/sleepimage




JJJason said: ↑
OK I've finished the hardware details, thank you for reminding!
If you want to enable your GPU, then you need to install NVIDIA Web Driver.

In case if you don’t know which version of web driver required for your OS X version, then please provide output of below command after running it on Terminal.app. So that i can help you on this.

Code (Text):
sw_vers
Once you installed web driver, make sure that you had changed NvidiaWeb to true under SystemParameters section of your config.plist file. See below,

Code (Text):
<key>SystemParameters</key>
    <dict>
       <key>InjectKexts</key>
       <string>YES</string>
       <key>InjectSystemID</key>
       <true/>
       <key>NvidiaWeb</key>
       <true/>
    </dict>
Then follow below steps,
1. Disable INTEL and NVIDIA injection on your config.plist
2. Remove nv_disable=1 flag from config.plist (If used)
3. Disable Intergrated Graphics on BIOS.
4. Set PCIe as your first display output device on BIOS.

Check booting again.



darkwake
As far as I know and as far as my system is concerned:
 
darkwake=0 -> Power Nap Disabled
darkwake=1 -> Power Nap Fully Enabled (System fully wakes. Fans on, monitors on, Hourly)
darkwake=2
darkwake=3
darkwake=4
darkwake=5
darkwake=6
darkwake=7
darkwake=8 -> Power Nap Enabled (System Fully wakes, sometimes monitor come on, sometimes not [don't know why])
darkwake=9
darkwake=10 -> Power Nap Enabled (Fans & monitors do not come on, system.log show the times that the computer woke from sleep. Time Machine Backup are performed hourly in sleep mode)
darkwake=11
