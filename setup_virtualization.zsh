#!/usr/bin/env zsh

echo "\n<<< Starting Docker & VirtualBox Setup >>>\n"

# Installation unnecessary; it's in the Brewfile.

if exists docker; then
  echo 'Docker commands linked. Skipping.'
else
  echo "Enable Docker Desktop first run to create commands symlinks."
  # https://forums.docker.com/t/docker-command-not-found-after-installing-docker-desktop-on-mac/93837/2
  open /Applications/Docker.app
fi

if [ "root" != $(stat -f '%Su' /usr/local/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve) ] || \
   [ "wheel" != $(stat -f '%Sg' /usr/local/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve) ] || \
   [ "-r-sr-xr-x" != $(stat -f '%Sp' /usr/local/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve) ]
then
  echo "Enter superuser (sudo) password to xhyve driver to access the hypervisor."
  sudo chown root:wheel /usr/local/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
  sudo chmod u+s /usr/local/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
fi