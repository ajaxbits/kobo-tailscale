#!/bin/sh

# make sure /mnt/onboard is mounted
timeout 5 sh -c "while ! grep /mnt/onboard /proc/mounts; do sleep 0.1; done"
if [[ $? -eq 143 ]]; then
    exit 1
fi

# init directories
mkdir -p /mnt/onboard/tailscale/tailscale-state /tmp/tailscale

# launch tailscaled
case "$(pidof tailscaled | wc -w)" in
0) STATE_DIRECTORY=/tmp/tailscale /mnt/onboard/tailscale/tailscaled \
    --tun=userspace-networking \
    --socket=/tmp/tailscale/tailscaled.sock \
    --statedir=/mnt/onboard/tailscale/tailscale-state &> /mnt/onboard/tailscale/tailscale.log 
   ;;
esac

exit 0
