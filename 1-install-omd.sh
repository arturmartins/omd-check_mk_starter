#!/bin/bash

# sign the repo
echo "Sign APT repo"
gpg --keyserver keys.gnupg.net --recv-keys F8C1CA08A57B9ED7
gpg --armor --export F8C1CA08A57B9ED7 | apt-key add -


# find your distro repo in https://labs.consol.de/repo/stable/
echo 'deb http://labs.consol.de/repo/stable/debian wheezy main' > /etc/apt/sources.list.d/omd.list
apt-get update

echo "Installing"
aptitude install omd