---
layout: default
title: Resume
---

## Adrian Chadd

* Email: adrian@creative.net.au
* Mobile: +1 415 857 2937

## Career Objectives

Seeking challenging roles designing, implementing and troubleshooting new
hardware platforms, networked services; IoT devices; internet infrastructure
and wireless technologies.

## Technical Skills
Adrian Chadd has over 20 years experience in various networking, systems and
software related areas. He has worked in a variety of environments including
technology startups, telecommunications carriers, corporate, consulting,
academic and government organisations.

His experience with software, hardware, electronics, networking from all
angles - specification, design, implementation, maintenance and
troubleshooting - make him an ideal candidate as part of a technical group
with a mandate to deliver secure, efficient, flexible solutions in a realistic
timeframe.

His diverse skill-sets and interests give him novel insights into problem
solving, debugging and troubleshooting across all disciplines.

* Network infrastructure - Design, implementation and troubleshooting of
  ethernet, ATM, satellite and native IP based networks. End-user technologies include POTS, DSL, 802.11, campus ethernet.
* Network equipment - Firewalls, routers and switches from vendors including Cisco, Juniper, Foundry, Bay Networks, Lucent, Alteon, Nokia.
* Network design - BGP and OSPF network design, protocol implementation, troubleshooting.
* Programming languages - highly proficient C and C++, various assembler flavours, Perl; Java, Haskell, Python, javascript. Exposure to COBOL, Fortran, PL/1.
* Operating systems - Kernel-level development with FreeBSD and Linux. Administration and application development in FreeBSD, Solaris and Linux. Network application development for various versions of Windows.
* Database services - Application developer and administrator using PostgreSQL and MySQL. Some Oracle application developer exposure.
* Web services - All aspects of Squid development, troubleshooting, performance work, optimisation and deployment. Exposure to Cisco ACE and Cache Engines. Forward and reverse proxy environments. Development and administration experience with Lighttpd, Nginx. Development experience with node.js and Django.
* Embedded systems - Atheros MIPS SoC (AR71xx, AR724x, AR913x, AR933x, AR934x, QCA955x, QCA953x.) ARM systems (Broadcom BCM7444, Qualcomm Atheros IPQ801x.) Exposure to 68HC11. Extensive experience with Atmel AVR and Arduino based designs. Some exposure to PIC. Commercial development on Z180 hardware.
* Systems Programming - Event-driven network and disk IO; POSIX threads, distributed message passing, various RPC flavours, multi-thread and multi-process SMP applications.
* Wireless Technology - 802.11abgn, 802.11ac, 802.11s mesh, 2/5GHz, some 900MHz/700MHz experience; TDMA; Bluetooth, Bluetooth-LE
* Wireless Development - Ongoing driver development of the Atheros HAL wireless driver in FreeBSD. Maintainer/lead of the FreeBSD net80211 802.11 wireless stack. Other driver maintenance (Intel, Realtek.)

## Presentations

* Distributed content caching in large networks - Nanog 17, 1999
* Distributed content caching in large networks, part II - Nanog 18, 2000
* Squid - the anatomy of an internet appliance - 2001, University of UWA, Electrical Engineering, Distributed Applications group
* Developing Network Applications under UNIX - Linux.conf.au Perth, 2003
* Network Applications (or how not to write them) - BSDCan, 2008
* TCP Hijacking - BSDCan developers summit, 2008
* Writing efficient UNIX Disk IO applications - NYCBSDCon, 2008
* Building scalable web apps, and why no-one bothers - 2009
* State of 802.11n in FreeBSD - BSDCan, 2012
* The future of wireless networking - mobile, gigabit and beyond - BSDCan, 2013

## Employment History

### Eva Automation, Inc. (Redwood City, CA) - November 2015 - August 2016
### Bowers & Wilkins (Redwood City, CA) - August 2016 -

Eva Automation acquired Bowers & Wilkins early in 2016.

#### Wifi Team Lead

* Working on Broadcom ARM and 802.11ac hardware
* Working on Qualcomm Atheros ARM, 802.11n and 802.11ac hardware
* Wifi hardware validation (lightpoint)
* Embedded Linux development and driver debugging
* Audio and video distribution
* Further information available upon request.

### Norse Corp, Inc. (San Mateo, CA) - May 2014 - November 2015

#### Senior Engineer

* Part of the Norse DarkViking IP threat security appliance.
* Worked on 1G and 10G based IPv4 interception and HTTP classification.
* Implemented multi-thread, multi-CPU support with libuinet.
* Worked on both span and bridge interception with libuinet.
* Prototyped a high performance HTTP client/server test suite, eventually intended for >10G HTTP testing and > 100,000 request per second traffic rates. Code is available at http://github.com/erikarn/.
* Debugged 40G netmap support on chelsio T5 hardware.
* Implemented a prototype 40G netmap based bridge + traffic classifier to test netmap performance. Code is available at http://github.com/erikarn/ .
* Worked on initial data visualisation work (in d3.js), with a REST API (using cursor pagination) which worked on live, pre-aggregated data and raw data - providing fast search results on large (> 50 million) entry datasets on a single appliance.
* Implemented above REST API using cursor pagination on the appliance backend - utilising the existing Django rest framework, Postgresql, with custom (pre-9.5) rollup aggregation tables and data models.

### Netflix, Inc. (Los Gatos, CA) - July 2013 - April 2014

#### Senior Software Engineer

* Part of the FreeBSD based Open Connect team.
* Worked on network stack parallelism fixes, pushed fixes into FreeBSD-HEAD.
* Implemented a kqueue notification path for sendfile() completion, used to gather completion information about the underlying file or POSIX shared memory segment so they can be reused. This was designed primarily for use by a memory or disk cache application. This was pushed into FreeBSD-HEAD.
* Worked on debugging flowtable and various behavioural/performance corner case issues. This work was pushed into FreeBSD-HEAD.
* Debugged hwpmc related issues on Sandy Bridge / Sandy Bridge Xeon. Fixes are in FreeBSD.
* Worked with Intel to fix corner case issues in ixgbe transmit packet handling and interrupt handling.
* Developed network and POSIX AIO disk benchmark code, using asynchronous worker threads (1 per CPU core) to expose CPU use, locking and concurrency related issues. Code is available at http://github.com/erikarn/.

### Qualcomm Atheros, Inc. (San Jose) - December 2011- July 2013

#### Senior Software Engineer

* Part of the internal wifi hardware driver development - carrier and enterprise platforms.
* Focusing on DFS / radar detection and regulatory requirements.
* Involved in initial chipset prototyping and driver bringup/validation.
* Prototyped a multi-device, synchronised audio product using wifi and other L2/L3 technologies.

### Owner/Operator

#### Xenion Pty Ltd (Perth) - June 2007 - Jan 2016

* Routing/Switching; Web Caching; Squid software design; system administration; project design and management; Virtualisation and hosting technologies; embedded hardware platform development.
* Xenion Pty Ltd provided consulting services for a variety of clients around the world.

##### Software

* On-going development with transparent proxy/cache services for a US based ISP in Iraq currently serving 15,000 clients
* Development of NNTP/NNRP proxy/load balancing software, allowing single low cost servers to push multi-gigabits of traffic to thousands of clients each (whereas traditional innd/dreaderd/etc will not scale past a couple hundred megabits per server.)
* A proxy upgrade and rollout for a few thousand users for the National Bank of Australia (MLC division);
* Merged in IP spoofing support into FreeBSD-7.x and FreeBSD-8.x to support fully-transparent IPv4 proxy/cache applications;
* Development of Squid traffic management extensions to limit bandwidth used per client download for content delivery networks;
* Integration of Squid and Mediawiki for a wiki service developed for a large US based religious organisation;
* Many improvements to Lusca to allow it to function more effectively as CDN edge nodes - including per-domain traffic billing, BGPv4 integration for logging and cache peering, and netflow export of client data for live traffic monitoring;
* Integrating support for caching video sites (eg Youtube) and various software update sites (eg Windows Updates) so Lusca cache farms can both cache content and share it with other caches in the network;

##### Hardware

* Designed an embdded Squid/Lusca software suite for use on MIPS/ARM based SoC platforms - including URL filtering/monitoring/logging support which was targetted to work on platforms with small amounts of RAM;
* Ported FreeBSD/mips to the Atheros AR91xx/AR724x SoC platforms;
* Designed and developed prototype wireless access point hardware using Ubiquiti Routerstation Pro + SR-71A 802.11abgn radios for use in underground mining environments - primarily for use in vehicle/personnel location and underground traffic management.

##### Wireless

* Xenion has been engaged by a variety of companies to work on FreeBSD and Atheros 802.11 support. These companies include KBC Networks Inc, Hobnob Inc, and Minetec Pty Ltd.
* Added chipset support for the Atheros AR913x and AR9287 wireless devices to FreeBSD;
* Fixed the AR9280 and AR9287 support in FreeBSD;
* Improved the noise handling on the Atheros 802.11n chipsets;
* Debugged and improved calibration handling for Atheros 802.11n chipsets;
* Updated the FreeBSD radar detection and channel handling framework to function correctly;
* Assisted in porting and debugging the Atheros radar detection software to FreeBSD;
* Added 802.11n stack and driver support for all Atheros 802.11n chipsets currently supported by FreeBSD.

### Electronic and Electrical Engineering department; University of Western Australia - November 2007 - September 2008

#### Systems/Network Administrator

* Routing/Switching; Solaris 8, 9, 10 Administration; Programming (Perl, C, Shell), SAN (Sun StorEdge 3511)
* Provided some temporary system/administration services after the previous administrator left.
* Quickly learnt and documented all existing services.
* Provided support across a wide variety of Cisco, Solaris and Linux platforms including previously unfamiliar technologies (SAN, Sun SAMFS-QFS).
* Students and staff used these services 24/7 in a variety of capacities.
* Migrated services to Virtualisation platforms (Xen, Solaris Zones).

### Denver Technology (Perth) - October 2006 - June 2007

#### Network Engineer

* Cisco routing and bridging technologies; Virtualisation technologies (VMWare, Xen); some Linux/Solaris administration and software development
* Focused on Cisco-based network and VoIP technologies.
* Supported a wide variety of critical networks spanning state and international borders for a number of clients.
* Implemented monitoring and service/QoS management for one of Western Australia's largest mining companies.
* Tasked with the construction, configuration and installation for the BP Kwinana refinery in Perth; involved equipment and configuration upgrades to bring the network up to date and provide VoIP services to all users. Wrote software to automate a large part of the configuration process - which was done by hand at other refineries - dramatically speeding up the deployment time.

### The University of Western Australia (Perth) - October 2003 - October 2006

#### Systems/Network Administrator

* Cisco networking (ethernet, IP); Debian/Redhat ser ver installation and maintenance; scripting and application development (SH, BASH, sed/awk, zsh, C, C++, PHP, Perl, Python), dns, apache-1.x and 2.x; squid, radiusd, tacacsd, imp/horde, rancid (cisco config management), lrrd, munin, smokeping, Nagios, Mysource, some Oracle DB interfacing, sendmail, postfix, qmail, exim, Xen, VMWare.
* Part of a three-person team responsible for the state-wide UWA network services.
* Improved proxy cache performance (Squid running under Linux), dropping CPU usage by almost 95% and allowing the current proxy service to scale to fit the future needs of the university;
* The redesign of a number of departmental networks on campus to better integrate with the campus backbone/distribution network and allow more services to be available to endusers;
* The design, implementation and day-to-day maintenance of the University staff and student Webmail portal which services 20,000 students and 5,000 staff. This replaced an aging and unmaintained Horde/IMP installation with an up-to-date Horde/IMP install on a Linux Debian platform across multiple servers in a distributed load-balanced and fault-tolerant configuration.
* Analysis of the 2006 UWA student handbook service (http://handbooks.uwa.edu.au/) which performed poorly during student re-enrollment times (ser ving pages at a rate of 1 every 5 seconds) - MySource core code, database restructuring and Linux OS tuning along with the use of a modified Squid reverse proxy-cache dropped access times to sub-second levels. This allowed the University Publications and University Website groups to concentrate on the 2007 service rather than trying to maintain the 2006 site.
* Frequent testing and day-to-day care of the server backup regime including all student and staff email and almost a thousand University websites; spanning a terabyte of data in weekly full and nightly incremental backups.
* Re-engineering of current network services to support increased security and network resilience.
* The deployment of network infrastructure in new campus locations throughout Western Australia.

### West Australia Networks (Perth) May 2003 - October 2003

#### Technical Administrator

* Application development, Debian+Redhat Linux server installation and maintenance, ethernet/IP networking, advanced IP routing (BGP, OSPF), traffic shaping/management, QoS, L2TP (ADSL, Dialup), DNS, Apache, Squid, radiusd, AccSys ISP accounting database, Backup services, locally-written php4 web site hosting+CMS, nagios+mrtg monitoring, Mail (POP,IMAP,SMTP) services.
* Employed initially to consolidate and review the security of existing Linux, Windows and network infrastructure systems.
* Core networking infrastructure upgrades to support VoIP;
* General software upgrades across all Linux servers;
* General security auditing across all Linux servers; resulting in a combination of per-ser ver tripwire, ipfilter
  rules and log summarizing to report suspicious activity;
* Their initial Australia-wide ADSL offerings, using wholesale Layer 2 and Layer 3 ADSL bundles;
* Their initial Wireless internet deployments to a number of businesses in the Metropolitan Perth area ;
* The design and implementation of a Netflow-based accounting system to account Layer 3 ADSL and
  Wireless internet; integrating into their existing Accounting package (AccSys);
* The introduction of basic workflow and email ticket tracking systems implemented using Request Tracker

### Coretel (Perth) January 2003 - May 2003

#### Network Engineer

* ATM + IP networking, IP routing (OSPF, IS-IS, BGP, RIP), Wireless and fibre WAN, Linux/FreeBSD server administration, Nortel ATM+Wireless equipment, Cisco+Cabletron switches, named, radius, mrtg, cricket, traffacct, backups, tripwire
* Coretel was a telecommunications provider based in Perth, specializing in Wireless Internet and Telephony. Their core business was bought by another company, Didasco, sometime in 2005.
* Responsible for the design and maintenance of their Wireless ATM network, spanning half a dozen points of presence in Western Australia.
* Required quick familiarity with used Nortel Passport ATM switch/routers and the Shasta Broadband IP/ATM service router.
* Also responsible for Linux, FreeBSD and Novell servers implementing their shared e-mail, DNS, reporting and general services.

### IP Exchange (Sydney) July 2002 - December 2002

#### Systems Architect

* FreeBSD 4.x installation and administration, Cisco switches and routers, Bay Networks dialup servers, IP routing (OSPF, IS-IS, BGP), E1 and E3 circuits, PHP+Perl application development, Apache+PHP hosting, Postfix SMTP, rsync+tar backups, Squid, radius, PostgreSQL user/financial database, MySQL statistics database.
* IP Exchange was an Australia-wide Virtual ISP, with dialup and ADSL deployments in each major city. The main business, Barekoala, was bought by Dodo Internet sometime in 2003.
* Design and implementation of a virtual ISP accounting/management system, using PHP and PostgreSQL, controlling all aspects of the operation from online account creation, account management, credit card billing and various reporting;
* Design and implementation of transparent web proxy/caching, using a locally-modified Squid, to improve the user experience;
* Design and implementation of a pre-paid card management system - handling all aspects including card number assignment, reseller tracking and financial reporting;
* Design, implementation and improvements of ISP systems - including a distributed mailbox service and web hosting service
* The maintenance of over thirty FreeBSD servers - including constant security audits and software upgrading.

### InterXion (Amsterdam) March 2000 - September 2001

#### Network Architect/Systems Programmer

* MPLS, IP routing (BGP, IS-IS, OSPF), ethernet switching LAN+WAN, wireless technology, FreeBSD kernel development, C/C++/Perl application development, Solaris 8+Disksuite+Jumpstart server administration, FreeBSD server installation and administration, Alphaserver GS160 application development and system maintenance, Cisco routers+switches, Juniper routers, Extreme switches, OC1/OC3/OC12 Europe and North American IP+MPLS network, apache 1.x, named, radius, mysql, cricket+mrtg, locally developed route arbitration and network SLA monitoring software.
* Served as both a network engineer and network applications developer.
* Testing and development of MPLS and VLAN solutions, involving Juniper M40 routers and Extreme Black Diamond/Summit ethernet switches;
* The development of RPSL-driven BGP peering software (based on Zebra); to provide clients with separate BGP views depending on their registered peering arrangements;
* Implementing and maintaining a Europe-wide network monitoring service, implementing SLA style monitoring for all InterXion POPs and providing live reports to clients and management;
* Design, testing and deployment of Solaris 8 application hosting using Netra T1 rackmount servers; including Jumpstart-based hands-off installation with specific customisations available to clients to support their specific environments

### Versatel Telecom (Amsterdam) April 1999 - March 2000

#### Network/Web Cache Architect

* Solaris 7 administration, FreeBSD administration, Squid-2.3 and 2.4 development, apache, named, sendmail SMTP, qmail SMTP, HP Openview, Cisco routers/switches, Alteon Acedirector 3 loadbalance/failover switches, OC3 Europe and North Amercan IP network, IP routing (OSPF, BGP, IS-IS, RIP), ethernet switching LAN/WAN/VLAN.
* Speedport was bought by Versatel Telecom in the middle of 1999.
* The initial reverse proxy/cache work was presented at NANOG 19 in Montreal, Canada in late 1999. This work was one of the precursors to large scale content delivery network development.

### Speedport (Amsterdam) December 1998 - April 1999

#### Network/Web Cache Architect

* Solaris 7 administration, FreeBSD administration, Squid-2.3 and 2.4 development, apache, named, sendmail SMTP, qmail SMTP, HP Openview, Cisco routers/switches, Alteon Acedirector 3 loadbalance/failover switches, OC3 Europe and North Amercan IP network, IP routing (OSPF, BGP, IS-IS, RIP), ethernet switching LAN/WAN/VLAN.
* Designed, implemented and managed forward and reverse proxy services based on Squid-2.2 on Solaris.
* Developed their internet infrastructure (DNS, SMTP, NNTP.)
* Designed and developed a local network monitoring and management platform for all network devices throughout North America and Europe.
* Developed a local trouble ticketing and email platform for the Speedport NOC.
* Assisted in the design, rollout and management of their Cisco 12000-series IP network.

### iiNet Technologies (Perth) October - December 1998

#### Customer Support

* Customer Support, Linux application development (Perl.)
* Developed developing in-house applications to support and co-ordinate dialup client software installations across Perth.

### Computronics (Perth) June-October 1998

#### Software Developer

* Visual C, Visual Basic, Z180 development, basic electronics, GPS software implementation (C), some SCO Unix exposure.
* Developed software for a series of electronic LED signs - both text and video.
* Worked with Z180 and 68HC11 hardware platforms.
* Wrote control software for GPS-based survey and farming equipment.
* Developed software used by a number of Australian Cinemas to display up-to-date movie screening times on their LED signs.

### Ourworld Global Network (Sydney) 1997-1998

#### Network/Systems Administrator

* FreeBSD+Linux administration, C/Perl development, IP routing (BGP, OSPF, IS-IS), IP over Satellite, Cisco routing/switching, MySQL, Squid proxy/cache work; TCP/IP over satellite optimisation.
* Assisted in the development, deployment and testing of one of Australia's first commercial Satellite IP rollouts - the OGN network included a 45mbit service via Pan-Am Sat, delivering bandwidth from California to Melbourne, Sydney and Cairns.
* Developed a number of technologies to improve web browsing and general TCP response, utilizing a smaller terrestrial link to prioritize bulk traffic versus latency-critical traffic, giving the performance of a terrestrial link with the available throughput of a satellite service.
* Implemented transparent Squid HTTP proxy work for caching HTTP traffic over satellite and some TCP/IP window scaling rewriting.

## Open Source Software Projects

### Squid Proxy Cache

http://www.squid-cache.org/

Besides general performance, stability and code reorganisation improvements, the following is a non-exhaustive list of project milestones and features completed for the Squid project.

* (1999) initial storage modularisation work (modio)
* (1999) initial event-driven network work (commloops)
* (2000) integration and testing of initial COSS storage layer work
* (2000) changes to Squid-2.5 to decrease memory allocator use and improve general performance
* (2002) initial Squid-3 tidyup and codebase fork
* (2006) integration and debugging of WCCPv2 support
* (2006) async disk IO support for COSS
* (2006) production-ready COSS support for Squid-2.6
* (2006) production-ready event-driven network IO support for Squid-2.6
* (2006) kqueue, /dev/poll support for Squid-2.6
* (2006) performance work: client-side request parsing rewrite for Squid-2.7 and Squid-3.0
* (2008) Development of client-side delay pool support - limiting bandwidth use per-connection
* (2008) Development of delayed forwarding support for POST

### Lusca Proxy Cache

This is a non-exhaustive list of open source work either committed back or will be committed back to the public Lusca repository.

* (2008) Modularisation work - migrating most support and framework code into separate libraries with a defined, minimalistic dependency graph
* (2008) Initial Ipv6 socket framework support
* (2008) Ipv6 ACL, DNS and client database support
* (2009) Solaris event framework support for network IO
* (2009) Performance improvements with the thread based async IO support
* (2009) Introduction of fully transparent proxy support - Linux TPROXY2, Linux TPROXY4, FreeBSD TPROXY
* (2009) Rewritten storage startup and cache index rebuilding code - dramatically improving rebuild time for AUFS
* (2010) Per-domain traffic billing support - suitable for providing peak and average traffic levels suitable for 95% percentile billing

### FreeBSD

http://www.freebsd.org/

* (1998) Extending libalias to support NAT'ing IP protocols (for GRE/IPIP NAT)
* (1998) Simple extension to ping to timeout after a fixed length of time
* (1998) A simple exec image activator to support Java executables
* (1999) fsck(8) modularisation for multiple-filesystem support
* (1999) Local VM/buffer cache support to wire specific FFS structures in place to speed up innd performance
* (1999) Changes to dumpdev support to allow dumping to swap before single-user startup had completed
* (1999) Work on usermount support
* (1999) Development of a cut-down inode-only FFS for use in proxy/cache and news server environments
* (2008) Fully transparent TCP proxying
* (2009) HVM/Xen work - clock driver, network driver stability, initial SMP stability
* (2009) GEOM module to support logging individual disk operations for analysis and profiling
* (2010) FreeBSD/MIPS related work on the UBNT Routerstation Pro (Atheros AR71xx)
* (2010) Debugged calibration and beacon related issues in the Atheros 5416/9160 driver
* (2010) Extended the FreeBSD/MIPS Atheros SoC support to the AR9132 SoC
* (2010) Added AR910x Wireless MAC/radio support for the Atheros AR9132 SoC
* (2010) Prototyped 802.11n support for the AR9100/AR9160/AR9280 chipsets
* (2011) Added AR9287 support
* (2011) Extended the FreeBSD/MIPS Atheros SoC support to the AR724x SoC
* (2011) Completed the initial 802.11n support for all currently supported 11n chipsets
* (2011) Implemented a test radar detection module for ath(4), as part of regulatory requirement work
* (2012) Implemented 802.11n TX aggregation support for the ath(4) driver
* (2012) Fixed reset and channel change handling in ath(4) for correct 802.11n behaviour
* (2012) Added support for Atheros SoC platforms with calibration/PCI configuration data in SPI flash, in order to run on the various embedded hardware (Ubiquiti, TP-Link, D-Link) available
* (2012) Implemented and debugged the 802.11n BAR TX support for ath(4) TX aggregation
* (2013) Added Atheros AR9380 and later chipset support
* (2013) Added Atheros AR933x SoC support
* (2013) Debugged MIPS platform issues with FreeBSD/MIPS on mips74k superscalar cores
* (2013) Added Atheros AR934x SoC support
* (2013) Debugged performance issues in if_lagg, leading to locking related changes
* (2013) Updated Intel Sandy Bridge / Sandy Bridge Xeon support in hwpmc
* (2013) Worked with Intel to fix corner case issues in ixgbe transmit packet handling and interrupt handling
* (2013) Added support to the FreeBSD Intel 802.11n NIC driver for Centrino 6xxx, 2xxx, 1xx devices
* (2014) Added Atheros AR8327 switch PHY support
* (2014) Added support for kqueue notification of sendfile() completion
* (2014) Debugged various performance/behavioural issues with flowtable, making it more predictable over time
* (2015) Added QCA955x SoC and wifi support.
* (2015) Added QCA953x SoC and wifi support.
* (2015) Implemented 802.11n transmit and receive support for the Realtek RTL8188SU/8189SU USB adapters.
* (2015) Completed the initial Receive Side Scaling (RSS) implementation in FreeBSD for both Intel 10/40G drivers and IP/TCP/UDP networking code.
* (2015) Implemented initial NUMA memory allocator configuration support in FreeBSD-11.
* (2016) Added 802.11n support to Realtek 802.11n USB devices (RTL8188EU, RTL8192CU).
* (2016) Added A-MSDU encapsulation support to net80211.
* (2016) Added initial 802.11n (BCM4312, BCM4322) chipset support to the Broadcom softmac driver (bwn).
* (2016) Added 5GHz transmit/receive handling in the Broadcom softmac driver (bwn).

### Xen (general)

http://www.xensource.com/

* (2009) Extended pygrub to support FreeBSD disk label information for booting

### IRCd-hybrid

http://www.ircd-hybrid.org/

* (2001) Rewrote the majority of the network/socket code in ircd-hybrid-7 and replaced it with a derivative of my Squid-2.5 network core
* (2001) Reimplemented the line-based socket buffer code which was then extended to support reference-count buffer IO
* (2001) Reimplemented much of the parser code
* (2001) Introduced flexible DoS mitigation

### Zebra

http://www.quagga.net

I worked on a local Zebra codebase at InterXion as part of their plans to roll out a Europe-wide virtual internet exchange.

* (2000) local changes to support multiple BGP peering tables for use on meshed internet exchanges
* (2001) local changes to support AS path rewriting
* (2001) live RPSL database integration

### Other

This is a non-exhaustive list.  Please look at https://github.com/erikarn for projects.

* Apachebench (2008) - modified to use libevent and IPv6; available on google code - http://code.google.com/p/apachebench-adrian
* httperf (2008) - reimplemented the networking and event scheduling to use libevent

Various projects available at http://github.com/erikarn/ .

## Hobbies

Embedded hardware development, robotics, musician.

## References

Available on request.


