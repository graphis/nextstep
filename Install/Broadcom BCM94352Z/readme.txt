FakePCIID.kext
FakePCIID_Broadcom_WiFi.kext
BcrmPatchRAM2.kext
BrcmFirmwareRepo.kext

with KextBeast







Apply the following patch in Clover to enable WiFi using the BCM94352Z:
Kext: AirPortBrcm4360
Find: 81F952AA00007529
Replace: 81F952AA00006690
​
Through Clover config.plist, add the following within KextsToPatch:
<dict>
<key>Comment</key>
<string>AirPortBrcm4360 - fcvo</string>
<key>Disabled</key>
<false/>
<key>Find</key>
<data>gflSqgAAdSk=</data>
<key>Name</key>
<string>AirPortBrcm4360</string>
<key>Replace</key>
<data>gflSqgAAZpA=</data>
</dict>
