#!/bin/bash

set -eux

sudo apt-get update
sudo apt-get -y install postgresql postgresql-contrib
sudo systemctl enable postgresql
set +e
sudo -u postgres createuser -d --superuser ubuntu
createuser --superuser root
createdb atc
set -e
cat <<EOF | sudo tee /etc/postgresql/9.4/main/pg_hba.conf
# TYPE  DATABASE        USER            ADDRESS                 METHOD
local   all             postgres                                peer
local   all             all                                     peer
host    all             all             127.0.0.1/32            trust
host    all             all             ::1/128                 trust
EOF

sudo apt-get -y install linux-image-extra-virtual

wget https://github.com/concourse/concourse/releases/download/v1.0.0/concourse_linux_amd64
sudo install --owner=root --group=root --mode=744 concourse_linux_amd64 /usr/local/sbin/concourse
sudo install --owner=root --group=root --mode=744 ciab /usr/local/sbin/ciab

set +x
echo "Ready to go!  Restart and then run 'sudo coas'"
