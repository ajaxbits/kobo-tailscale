# Configuration for kobo tailscale

It works! Combination of [these](https://tailscale.dev/blog/tailscale-sucks) [two](https://dstaley.com/posts/tailscale-on-kobo-sage/) articles.

1. Add `98-tailscale.rules` to `/etc/udev/rules.d`.
2. Get **ARM 32-bit** versions of Tailscale binaries, and move `tailscale` and `tailscaled` to `/mnt/onboard/tailscale`
3. Create `/usr/local/ajax` and move all `.sh` scripts there. Don't forget to `chmod +x` them.
4. Run the command from `boot.sh` to start the `tailscaled`
5. Run `on-wlan-up.sh` to do initial auth with tailnet.
6. Stop running commands, and reboot
7. You now are on tailscale!
