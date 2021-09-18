#!/bin/sh

if [ -z "$COCKROACH_PEERS" ]
then
    echo "No 'COCKROACH_PEER' set. exiting"
    exit 1
fi

echo "USING PEERS $COCKROACH_PEERS"

cockroach \
    start \
    --insecure \
    --join "$COCKROACH_PEERS" \
    --listen-addr 0.0.0.0:10099 \
    --http-addr 0.0.0.0:8080
