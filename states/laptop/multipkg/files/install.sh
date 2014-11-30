#!/bin/sh

# exit if multipkg already installed
which multipkg && exit 0

cwd="$(mktemp -d)"
[ -n "$cwd" ] && trap EXIT rm -rf $cwd
cd $cwd
git clone https://github.com/jianingy/multipkg || exit 111
cd multipkg || exit 111
./install.sh || exit 111
dpkg -i multipkg*.deb || exit 111
