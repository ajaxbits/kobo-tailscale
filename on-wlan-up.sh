#!/bin/sh

/mnt/onboard/tailscale/tailscale \
    --socket=/tmp/tailscale/tailscaled.sock \
    up --ssh --hostmane=kobo
