In `/etc/udev/rules.d/50-bluetooth.rules`, add:

```ini
ACTION=="add", SUBSYSTEM=="usb", ATTR{idVendor}=="0bda", ATTR{idProduct}=="b001", ATTR{power/autosuspend}="-1"
```

In `/etc/wireplumber/main.lua.d/50-alsa-config.lua`

Edit `["session.suspend-timeout-seconds"]` to `0`
