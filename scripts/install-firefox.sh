#!/usr/bin/env bash
wget -O firefox-installer.tar.bz2 "https://download.mozilla.org/?product=firefox-latest&os=linux64&lang=en-US"
sudo mkdir /opt/firefox
sudo tar xjf firefox-installer.tar.bz2 -C /opt/firefox/
sudo mv /usr/lib/firefox-esr/firefox-esr /usr/lib/firefox-esr/firefox-esr_bak
sudo ln -s /opt/firefox/firefox/firefox /usr/lib/firefox-esr/firefox-esr
rm firefox-installer.tar.bz2
echo 'Firefox was installed sucessfully!!'

# to restore the original esr-firefox
# unlink /usr/lib/firefox-esr/firefox-esr
# mv /usr/lib/firefox-esr/firefox-esr_orig /usr/lib/firefox-esr/firefox-esr
