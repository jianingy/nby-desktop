gnome-panel:
  pkg.installed

xmonad:
  pkg.installed

# configuration for xsession
/usr/share/xsessions/gnome-xmonad.desktop:
  file:
    - managed
    - source: salt://laptop/xmonad/files/xsessions-gnome-xmonad.desktop
    - mode: 644
    - require:
        - pkg: xmonad

# configuration for gnome-session
/usr/share/gnome-session/sessions/xmonad.session:
  file:
    - managed
    - source: salt://laptop/xmonad/files/gnome-session-xmonad.session
    - mode: 644
    - require:
        - pkg: xmonad


# configuration for xmonad application 
/usr/share/applications/xmonad.desktop:
  file:
    - managed
    - source: salt://laptop/xmonad/files/application-xmonad.desktop
    - mode: 644
    - require:
        - pkg: xmonad

