#!/bin/bash

eval 'set +o history' 2>/dev/null || setopt HIST_IGNORE_SPACE 2>/dev/null
 touch ~/.gitcookies
 chmod 0600 ~/.gitcookies

 git config --global http.cookiefile ~/.gitcookies

 tr , \\t <<\__END__ >>~/.gitcookies
hardware-mfg-internal.googlesource.com,FALSE,/,TRUE,2147483647,o,git-essim.google.com=1//01Pi-B_VOaNwkCgYIARAAGAESNwF-L9Ir28aTKIWGAWhTastp6r_1CCgB1X72iUZDp3Bu2DUQP-D2krkJLpHAGFvxoiOrqRfCEbE
hardware-mfg-internal-review.googlesource.com,FALSE,/,TRUE,2147483647,o,git-essim.google.com=1//01Pi-B_VOaNwkCgYIARAAGAESNwF-L9Ir28aTKIWGAWhTastp6r_1CCgB1X72iUZDp3Bu2DUQP-D2krkJLpHAGFvxoiOrqRfCEbE
__END__
eval 'set -o history' 2>/dev/null || unsetopt HIST_IGNORE_SPACE 2>/dev/null

echo "=============================="
echo "C10P10"
echo "=============================="
cd ~/P22/c10p10
git fetch origin master
git status

echo "=============================="
echo "CommonUtils"
echo "=============================="
cd ~/CommonUtils
git fetch origin master
git status

echo "=============================="
echo "gtal"
echo "=============================="
cd ~/gtal
git fetch origin master
git status

echo "=============================="
echo "U3"
echo "=============================="
cd ~/U3
git fetch origin master
git status

echo "=============================="
echo "R3"
echo "=============================="
cd ~/R3
git fetch origin master
git status

echo "=============================="
echo "GQ"
echo "=============================="
cd ~/GQ
git fetch origin master
git status

echo "=============================="
echo "B9"
echo "=============================="
cd ~/B9
git fetch origin master
git status

echo "=============================="
echo "R4"
echo "=============================="
cd ~/R4
git fetch origin master
git status

echo "=============================="
echo "O6"
echo "=============================="
cd ~/O6
git fetch origin master
git status

echo "=============================="
echo "R4O6"
echo "=============================="
cd ~/R4O6
git fetch origin master
git status

echo "=============================="
echo "P7"
echo "=============================="
cd ~/P7
git fetch origin master
git status



