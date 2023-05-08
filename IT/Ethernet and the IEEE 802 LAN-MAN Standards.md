The term **Ethernet** generally refers to a set of standards first published in 1980 and  
revised in 1982 by Digital Equipment Corp., Intel Corp., and Xerox Corp. The first  
common form of Ethernet is now sometimes called “10Mb/s Ethernet” or “shared  
Ethernet,” and it was adopted (with minor changes) by the IEEE as standard number  
802.3.  Because multiple stations share the same network, this standard includes a  
distributed algorithm implemented in each Ethernet network interface that con-  
trols when a station gets to send data it has. 

The particular method, known as  carrier sense, multiple access with collision detection **(CSMA/CD)**, mediates which  computers can access the shared medium (cable) without any other special agreement or synchronization. This relative simplicity helped to promote the low cost  and resulting popularity of Ethernet technology. With CSMA/CD, a station (e.g., computer) first looks for a signal currently  being sent on the network and sends its own frame when the network is free.  

This is the “carrier sense” portion of the protocol. If some other station happens  
to send at the same time, the resulting overlapping electrical signal is detected as  
a collision. In this case, each station waits a random amount of time before try-  
ing again.

With **CSMA/CD**,  only one frame is traveling on the network at any given time. Access methods such  as CSMA/CD are more formally called **Media Access Control (MAC)** protocols.  
There are many types of MAC protocols; some are based on having each station  
try to use the network independently (contention-based protocols like CSMA/  
CD), and others are based on prearranged coordination (e.g., by allocating time  
slots for each station to send).

The original Ethernet frame format and operation were described by industry  
agreement, mentioned earlier. This format was known as the DIX format or Eth-  
ernet II format. This type of Ethernet network, with slight modification, was later  
standardized by the IEEE as a form of CSMA/CD network, called 802.3. In the  
world of IEEE standards, standards with the prefix 802 define the operations of  
LANs and MANs. 

The most popular 802 standards today include 802.3 (essen-  
tially Ethernet) and 802.11 (WLAN/Wi-Fi). These standards have evolved over  
time and have changed names as freestanding amendments (e.g., 802.11g) are  
ultimately incorporated in revised standards. Table 3-1 shows a fairly complete  
list of the IEEE 802 LAN and MAN standards relevant to supporting the TCP/IP  
protocols, as of mid-2011.

### Bridges and Switches
The IEEE 802.1d standard specifies the operation of bridges, and thus switches,  
which are essentially high-performance bridges. A bridge or switch is used to join  
multiple physical link-layer networks (e.g., a pair of physical Ethernet segments) or  
groups of stations. 

When a **switch** (**bridge**) is first turned on, its database is **empty**, so it does  
not know the location of any stations except itself. Whenever it receives a frame  
destined for a station other than itself, it makes a copy for each of the ports other  
than the one on which the frame arrived and sends a copy of the frame out of each one. 

If switches (bridges) never learned the location of stations, every frame would  
be delivered across every network segment, leading to unwanted overhead. The  
learning capability reduces overhead significantly and is a standard feature of  
switches and bridges.  

Today, most operating systems support the capability to bridge between net-  
work interfaces, meaning that a standard computer with multiple interfaces can  
be used as a bridge.

### Wireless LANs --- IEEE 802.11
One of the most popular technologies being used to access the Internet today is  
wireless fidelity (**Wi-Fi**), also known by its IEEE standard name **802.11**, effectively  
a wireless version of Ethernet. Wi-Fi has developed to become an inexpensive,  
highly convenient way to provide connectivity and performance levels acceptable for most applications. Wi-Fi networks are easy to set up, and most portable com-  
puters and smartphones now include the necessary hardware to access Wi-Fi  
infrastructure. Many coffee shops, airports, hotels, and other facilities include  
Wi-Fi “hot spots,” and Wi-Fi is even seeing considerable advancement in develop-  
ing countries where other infrastructure may be difficult to obtain.

### Point-to-Point Protocol (PPP)
**PPP** stands for the Point-to-Point Protocol . It is a popular method for carrying IP datagrams over serial links—from low-speed dial-up  
modems to high-speed optical links. It is widely deployed by some DSL service providers.
PPP should be considered more of a collection of protocols than a single pro-  
tocol. It supports a basic method to establish a link, called the Link Control Proto-  
col (**LCP**), as well as a family of NCPs, used to establish network-layer links for  
various kinds of protocols, including IPv4 and IPv6 and possibly non-IP protocols,  
after LCP has established the basic link. A number of related standards cover con-  
trol of compression and encryption for PPP, and a number of authentication meth-  
ods can be employed when a link is brought up.

### Link Control Protocol

The LCP portion of PPP is used to establish and maintain a **low-level two-party  
communication path** over a point-to-point link. PPP’s operation therefore need  
be concerned only with two ends of a single link; it does not need to handle the  
problem of mediating access to a shared resource like the MAC-layer protocols of  
Ethernet and Wi-Fi.  

PPP generally, and LCP more specifically, imposes minimal requirements on  
the underlying point-to-point link. The link must support bidirectional operation  
(LCP uses acknowledgments) and operate either asynchronously or synchro-  
nously. Typically, LCP establishes a link using a simple bit-level framing format  
based on the High-Level Data Link Control (HDLC) protocol. HDLC was already  
a well-established framing format by the time PPP was designed [ISO3309]  
[ISO4335]. IBM modified it to form Synchronous Data Link Control (SDLC), a pro-  
tocol used as the link layer in its proprietary System Network Architecture (SNA)  
protocol suite. HDLC was also used as the basis for the LLC standard in 802.2 and  
ultimately for PPP as well.

[[Dynamic Host Configuration Protocol (DHCP)]]
