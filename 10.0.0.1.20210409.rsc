/snmp community
set [ find default=yes ] disabled=yes
/user group
set full policy="local,telnet,ssh,ftp,reboot,read,write,policy,test,winbox,pas\
    sword,web,sniff,sensitive,api,romon,dude,tikapp"
add name=prometheus policy="read,web,api,!local,!telnet,!ssh,!ftp,!reboot,!wri\
    te,!policy,!test,!winbox,!password,!sniff,!sensitive,!romon,!dude,!tikapp"
add name=ansible policy="local,telnet,ssh,ftp,reboot,read,write,policy,test,wi\
    nbox,password,web,sniff,sensitive,api,romon,dude,tikapp"
/ip neighbor discovery-settings
set discover-interface-list=LIST-LAN-USERS
/ip cloud
set ddns-enabled=yes ddns-update-interval=1h
/ip dhcp-server alert
add disabled=no interface=LAN-04 valid-server=00:00:00:00:00:00
add disabled=no interface=LAN-Users valid-server=00:00:00:00:00:00
/ip firewall address-list
add address=83.243.104.9 list=router.rachuna.net
/ip ipsec policy
set 0 disabled=yes
/ip service
set telnet disabled=yes
set ftp address=0.0.0.0/0 disabled=yes port=22
set www-ssl address=\
    10.0.0.0/24,10.1.0.0/24,10.2.0.0/24,10.3.0.0/24,10.254.0.0/24,0.0.0.0/0 \
    certificate=router.rachuna.net disabled=no
set api disabled=yes
set winbox disabled=yes
/ip traffic-flow
set enabled=yes
/ip upnp
set enabled=yes
/system upgrade mirror
set enabled=yes
/tool graphing
set store-every=24hours
/tool graphing interface
/tool graphing queue
add store-on-disk=no
/tool graphing resource
add store-on-disk=no
/tool mac-server
set allowed-interface-list=LIST-LAN-USERS
/tool mac-server mac-winbox
set allowed-interface-list=LIST-LAN-USERS
/tool traffic-monitor
add interface=LAN-Users name=tmon1 threshold=0