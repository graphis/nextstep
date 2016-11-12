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


## Misc
### Rebuild Font Cache

Inatalling and removing fonts can corrupt a font cache, causing it to become slow over time. Rebuild the cache with the following terminal command.

~~~~
atsutil databases -remove
~~~~




