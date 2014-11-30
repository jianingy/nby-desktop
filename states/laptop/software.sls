# for geary mail client
yorba-ppa:
  pkgrepo.managed:
    - ppa: yorba/ppa

dotcloud-docker-ppa:
  pkgrepo.managed:
    - ppa: dotcloud/lxc-docker

ubuntu-wine-ppa:
  pkgrepo.managed:
    - ppa: ubuntu-wine/ppa

install_packages:
  pkg.installed:
    - pkgs:
      - bridge-utils
      - curl
      - dmenu2
      - dstat
      - fabric
      - geary
      - gmrun
      - htop
      - irssi
      - lxc-docker
      - mplayer
      - mr
      - mu4e
      - nfs-common
      - oracle-java6-installer
      - oracle-java6-set-default
      - p7zip-full
      - python-keyring
      - rxvt-unicode
      - suckless-tools
      - sysstat
      - tmux
      - uml-utilities
      - vlan
      - vcsh
      - vlc
      - wine1.7
      - wireshark
      - whois

