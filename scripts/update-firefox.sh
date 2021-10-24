#!/usr/bin/env bash
wget -O firefox-installer.tar.bz2 "https://download.mozilla.org/?product=firefox-latest&os=linux64&lang=en-US"
sudo tar xjf firefox-installer.tar.bz2 -C /opt/firefox/
rm firefox-installer.tar.bz2
