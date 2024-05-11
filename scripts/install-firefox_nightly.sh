#!/usr/bin/env bash
# https://blog.nightly.mozilla.org/2023/10/30/introducing-mozillas-firefox-nightly-deb-packages-for-debian-based-linux-distributions/
# First, import the Mozilla APT repository signing key:
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/packages.mozilla.org.gpg > /dev/null

# The fingerprint should be 35BA A0B3 3E9E B396 F59C  A838 C0BA 5CE6 DC63 15A3
gpg --quiet --no-default-keyring --keyring /etc/apt/trusted.gpg.d/packages.mozilla.org.gpg --fingerprint | awk '/pub/{getline; gsub(/^ +| +$/,""); print "\n"$0"\n"}'

# Next, add the Mozilla APT repository to your sources list:
echo "deb [signed-by=/etc/apt/trusted.gpg.d/packages.mozilla.org.gpg] https://packages.mozilla.org/apt mozilla main" | sudo tee -a /etc/apt/sources.list.d/mozilla.list > /dev/null

# Update your package list and install the Firefox Nightly .deb package:
sudo apt-get update && sudo apt-get install firefox-nightly