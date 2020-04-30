#!/bin/bash -eux
set -o pipefail

DEBIAN_FRONTEND=non-interactive apt-get update
DEBIAN_FRONTEND=non-interactive apt-get install -y \
	python3 \
	python3-pip \
	git

pip3 install ansible

ansible-galaxy install -r requirements.yaml
