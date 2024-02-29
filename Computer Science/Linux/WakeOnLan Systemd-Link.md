Add this in <code>/etc/systemd/network/10-<interface>.link</code>

```
[Match]
MACAddress=aa:bb:cc:dd:ee:ff

[Link]
NamePolicy=kernel database onboard slot path
MACAddressPolicy=persistent
WakeOnLan=magic
```

Check with ethtool if the changes are effective.

<code>ethtool <interface> | grep Wake-On </code>


