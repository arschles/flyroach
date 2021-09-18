#!/bin/bash

set -eou pipefail


apt-get update
apt-get install -y curl build-essential

# https://www.cockroachlabs.com/docs/v21.1/install-cockroachdb-linux
curl https://binaries.cockroachdb.com/cockroach-v21.1.7.linux-amd64.tgz | \
    tar -xz && \
    cp -i cockroach-v21.1.7.linux-amd64/cockroach /usr/local/bin/ && \
    rm -r cockroach-v21.1.7.linux-amd64
