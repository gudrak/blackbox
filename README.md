# blackbox

Antes de empezar esta es una muy basica guia para configurar blackboxwm

es necesario tener estos paquetes: bbkeys, blackboxwm, nitrogen como minimo y algun editor de preferencia nano o micro y menumaker
 


En el directorio: /usr/share/xsessions/ 

se debe de crear un fichero llamado :

blackboxwm.desktop 

El cual debe contener las siguientes lineas:

[Desktop Entry]
Name=blackbox
Exec=$HOME/.blackbox/bbstartup
TryExec=$HOME/.blackbox/bbstartup

En el directorio Home del usuario se debe crear el fichero: .blackboxrc

y dentro de este ".blackboxrc" contendra las siguientes lineas:


session.styleFile:	/usr/share/blackbox/styles/Minimal-black
session.menuFile: ~/.blackbox/menu
session.stylesFile: ~/.blackbox/styles/PureBlack


Despues creamos el directorio .blackbox en /home/usuario/.blackbox/ y creamos el directorio "styles" dentro de "/home/usuario/.blackbox/"


Dentro de "~/.blackbox/"

## Creamos bbstartup: * touch bbstartup

## Le damos permisos: *chmod +x bbstartup

## en ese fichero va a ir estas siguientes lineas:

 
* #!/bin/bash
* bbkeys &
* nitrogen --restore &
* exec /usr/bin/blackbox


## Creamos el fichero menu y dentro de el agregamos estas lineas:

* [begin] (BlackBox)
    [submenu] (Development)
        [exec] (Icon Browser) {gtk4-icon-browser}
        [exec] (Micro) {xterm -e micro}
        [exec] (Python) {xterm -e python}
    [end]
    [submenu] (Editors)
        [exec] (Vi) {xterm -e vi}
        [exec] (Vim) {xterm -e vim}
    [end]
    [submenu] (Graphics)
        [exec] (LXImage) {lximage-qt}
    [end]
    [submenu] (Multimedia)
        [exec] (ALSA mixer) {xterm -e alsamixer}
        [exec] (PulseAudio Volume Control) {pavucontrol}
    [end]
    [submenu] (Network)
        [exec] (Falkon) {falkon}
        [exec] (TkVNC) {xterm -e tkvnc}
    [end]
    [submenu] (Shells)
        [exec] (Dash) {xterm -e dash -i}
        [exec] (GIT) {xterm -e git}
        [exec] (LXTerminal) {lxterminal}
        [exec] (PCManFM-Qt File Manager) {pcmanfm-qt}
        [exec] (QTerminal) {qterminal}
        [exec] (QTerminal drop down) {qterminal --drop}
        [exec] (ROX) {rox}
        [exec] (UXTerm) {uxterm}
        [exec] (Xterm) {xterm}
    [end]
    [submenu] (System)
        [submenu] (Settings)
            [submenu] (GNOME)
                [exec] (Advanced Network Configuration) {nm-connection-editor}
            [end]
            [exec] (Appearance) {lxqt-config-appearance}
            [exec] (Brightness) {lxqt-config-brightness}
            [exec] (Desktop) {pcmanfm-qt --desktop-pref=general}
            [exec] (Desktop Notifications) {lxqt-config-notificationd}
            [exec] (File Associations) {lxqt-config-file-associations}
            [exec] (Keyboard and Mouse) {lxqt-config-input}
            [exec] (Locale) {lxqt-config-locale}
            [exec] (Lock Screen) {lxqt-leave --lockscreen}
            [exec] (LXQt Configuration Center) {lxqt-config}
            [exec] (Monitor settings) {lxqt-config-monitor}
            [exec] (Openbox Settings) {obconf-qt}
            [exec] (Power Management) {lxqt-config-powermanagement}
            [exec] (Session Settings) {lxqt-config-session}
            [exec] (Shortcut Keys) {lxqt-config-globalkeyshortcuts}
            [exec] (Users and Groups) {lxqt-admin-user}
        [end]
        [exec] (About LXQt) {lxqt-about}
        [exec] (Hibernate) {lxqt-leave --hibernate}
        [exec] (Htop) {xterm -e htop}
        [exec] (Leave) {lxqt-leave}
        [exec] (Logout) {lxqt-leave --logout}
        [exec] (OctoXBPS) {octoxbps}
        [exec] (OctoXBPS Notifier) {octoxbps-notifier}
        [exec] (pstree) {xterm -e /usr/bin/pstree.x11}
        [exec] (pstree) {xterm -e pstree}
        [exec] (Pstree) {xterm -e pstree.x11}
        [exec] (Reboot) {lxqt-leave --reboot}
        [exec] (Shutdown) {lxqt-leave --shutdown}
        [exec] (Suspend) {lxqt-leave --suspend}
        [exec] (Top) {xterm -e top}
    [end]
    [submenu] (Utilities)
        [exec] (LXQt File Archiver) {lxqt-archiver}
        [exec] (SpaceFM File Search) {spacefm}
    [end]
    [submenu] (BlackBox)
        [submenu] (Styles) {Choose a style...}
        [stylesdir] (/usr/share/blackbox/styles)
        [end]
        [submenu] (User Styles) {Selecciona un Tema}
        [stylesdir] (~/.blackbox/styles)
        [end]
        [workspaces] (Workspaces)
        [config] (Configure)
        [reconfig] (Reconfig)
        [restart] (Restart)
        [exit] (Exit)
    [end]
[end]




por ultimo para crear mi customizacion del Tema "Minimal"

dentro de /home/usuario/.blackbox/styles/ 

creamos: PureBlack

y agragamos las siguentes lineas en PureBlack:



! ***** Menu *****
menu.frame.font:                        Helvetica:size=12
menu.title.font:                        Helvetica:size=12

menu.title:                             flat solid border border
     menu.title.color:                  Black
     menu.title.colorTo:                
menu.title.borderWidth:                 1
menu.title.borderColor:                 Black
menu.title.textColor:                   White

menu.frame:                             flat solid border border
     menu.frame.color:                  MidnightBlack
     menu.frame.colorTo:                
menu.frame.borderWidth:                 1
menu.frame.borderColor:                 Black
menu.frame.textColor:                   White
menu.frame.foregroundColor:             White

menu.active:                            flat solid border
     menu.active.color:                 White
     menu.active.colorTo:               
menu.active.borderWidth:                1
menu.active.borderColor:                Black
menu.active.textColor:                  Black

! for 0.6x compatibility
menu.hilite:                            flat solid
     menu.hilite.color:                 White
     menu.hilite.colorTo:               
menu.hilite.textColor:                  Black

menu.bullet:                            Triangle
menu.bullet.position:                   Right

menu.frame.disabledColor:               black
! for 0.6x compatibility
menu.frame.disableColor:                black

menu.frame.alignment:                   left
menu.title.alignment:                   center

! for 0.6x compatibility
menu.frame.justify:                     left
menu.title.justify:                     center


! ***** Window *****
window.font:                            Helvetica:size=12

! focused window
window.title.focus:                     flat solid
     window.title.focus.color:          Black
     window.title.focus.colorTo:        

window.label.focus:                     parentrelative
window.label.focus.textColor:           White

window.handle.focus:                    flat solid
     window.handle.focus.color:         Black
     window.handle.focus.colorTo:       

window.grip.focus:                      flat solid
     window.grip.focus.color:           Grey
     window.grip.focus.colorTo:         

window.button.focus:                    parentrelative
window.button.focus.picColor:           White

window.button.pressed:                  parentrelative

window.frame.focusColor:                Black

! unfocused window
window.title.unfocus:                   flat solid
     window.title.unfocus.color:        Black
     window.title.unfocus.colorTo:      

window.label.unfocus:                   parentrelative
window.label.unfocus.textColor:         Grey

window.handle.unfocus:                  flat solid
     window.handle.unfocus.color:       Black
     window.handle.unfocus.colorTo:     

window.grip.unfocus:                    flat solid
     window.grip.unfocus.color:         Grey
     window.grip.unfocus.colorTo:       

window.button.unfocus:                  parentrelative
window.button.unfocus.picColor:         Grey

window.frame.unfocusColor:              Black

window.alignment:                       center
window.frameWidth:                      1
window.handleHeight:                    4

! for 0.6x compatibility
window.justify:                         center

! ***** toolbar *****
toolbar.font:                           Helvetica:size=12
toolbar:                                flat solid
     toolbar.color:                     Black
     toolbar.colorTo:                   

toolbar.label:                          parentrelative
toolbar.label.textColor:                white

toolbar.windowLabel:                    parentrelative
toolbar.windowLabel.textColor:          white

toolbar.clock:                          parentrelative
toolbar.clock.textColor:                white

toolbar.button:                         parentrelative

toolbar.button.pressed:                 flat solid
     toolbar.button.pressed.color:      Black
     toolbar.button.pressed.colorTo:    

toolbar.button.picColor:                White

toolbar.alignment:                      center

! for 0.6x compatibility
toolbar.justify:                        center

! ***** the rest *****
borderColor:                            Black
borderWidth:                            1
bevelWidth:                             1
!  for 0.6x compatibility
handleWidth:                            4
frameWidth:                             1
rootCommand:                            bsetroot -solid SlateGrey
