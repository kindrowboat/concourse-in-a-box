#!/bin/bash

printf "🛫 Let's get you flying with concourse.\n\n"

set -eux
cd "$(dirname "$0")"

sudo apt-get -y install postgresql postgresql-contrib linux-generic-lts-vivid
sudo update-rc.d postgresql enable
set +e
sudo -u postgres createuser -d --superuser $(whoami)
createdb atc
set -e

if [[ ! -f concourse_linux_amd64 ]]; then
  wget https://github.com/concourse/concourse/releases/download/v1.0.0/concourse_linux_amd64
fi
sudo install --owner=concourse --group=concourse --mode=755 concourse_linux_amd64 /usr/local/bin/concourse
sudo install --owner=concourse --group=concourse --mode=755 ciab /usr/local/bin/ciab

set +x

printf "\n🛩 Ready to go! Run reboot to reload the kernel, login as concourse, and run 'ciab' to start concourse.\n\n"
