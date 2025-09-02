#!/usr/bin/env bash
# to restore the original esr-firefox
sudo unlink /usr/lib/firefox-esr/firefox-esr
sudo mv /usr/lib/firefox-esr/firefox-esr_bak /usr/lib/firefox-esr/firefox-esr
sudo rm -r /opt/firefox
sudo apt-mark unhold firefox-esr
echo 'Firefox was uninstalled sucessfully!!'
