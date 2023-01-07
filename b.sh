#!/bin/bash
mv .blackboxrc $HOME
mv .blackbox $HOME

touch blackboxwm.desktop

echo "[Desktop Entry] 
Name=blackbox 
Exec=$HOME/.blackbox/bbstartup 
TryExec=$HOME/.blackbox/bbstartup" >> blackboxwm.desktop

sudo chmod +x blackboxwm.desktop

sudo mv blackboxwm.desktop /usr/share/xsessions
