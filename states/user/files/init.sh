#!/bin/sh

rm -f .bashrc
vcsh clone https://github.com/jianingy/dotfiles-mr.git || exit 111
mr update || exit 111
exit 0

