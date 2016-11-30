# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/system/bin" ] ; then
    PATH="$HOME/system/bin:$PATH"
fi
