#!/usr/bin/env zsh
# Zero disk spaces
# Copyright (C) 2015 by Mingjie Li, <limingjie@outlook.com>
# https://github.com/limingjie/dotfiles

# clean log files (https://unix.stackexchange.com/questions/27649/cleaning-log-files-under-linux)
find /var/log -type f -exec /bin/cp /dev/null {} \;

# sda
cd / ; cat /dev/zero > zero.fill ; sync ; sleep 1 ; sync ; rm -f zero.fill

# sdb
cd /home ; cat /dev/zero > zero.fill ; sync ; sleep 1 ; sync ; rm -f zero.fill
