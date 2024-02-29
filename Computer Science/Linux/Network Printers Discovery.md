## install packages
<code>cups cups-filters cups-pdf cups-pk-helper libcups</code>

<code>foomatic-db foomatic-db-engine foomatic-db-gutenprint-ppds foomatic-db-nonfree foomatic-db-nonfree-ppds foomatic-db-ppds hplip gutenprint</code>

<code>sudo systemctl start cups
sudo systemctl enable cups

extra/avahi ... (Installed)
    Service Discovery for Linux using mDNS/DNS-SD -- compatible with Bonjour
extra/nss-mdns ... (Installed)
    glibc plugin providing host name resolution via mDNS

sudo systemctl start avahi-daemon
sudo systemctl enable avahi-daemon</code>

## edit /etc/nsswitch.conf from

<code>hosts: mymachines resolve [!UNAVAIL=return] files myhostname dns</code>

## to

<code>hosts: mymachines mdns_minimal [NOTFOUND=return] resolve [!UNAVAIL=return] files myhostname dns</code>


