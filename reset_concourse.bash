#!/usr/bin/env bash

set -eux

sudo rm -rf /etc/concourse
dropdb atc
createdb atc
