#!/bin/bash

# 1. Display IP address and network interfaces
echo "1. Show IP addresses and interfaces:"
# ip: command for network interface configuration
# addr: show addresses
# show: display information
ip addr show
# Sample output:
# 2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 ...
#     inet 192.168.1.10/24 brd 192.168.1.255 scope global eth0
#     inet6 fe80::a00:27ff:fe4e:66a1/64 scope link

# 2. Check network connectivity (ping)
echo "2. Ping google.com to test connectivity:"
# ping: send ICMP ECHO_REQUEST to network hosts
# -c 4: send 4 packets
ping -c 4 google.com
# Sample output:
# PING google.com (142.250.190.78): 56 data bytes
# 64 bytes from 142.250.190.78: icmp_seq=0 ttl=115 time=12.3 ms
# --- google.com ping statistics ---
# 4 packets transmitted, 4 received, 0% packet loss

# 3. Display routing table
echo "3. Show routing table:"
# ip: network configuration tool
# route: routing table management
# show: display routes
ip route show
# Sample output:
# default via 192.168.1.1 dev eth0
# 192.168.1.0/24 dev eth0 proto kernel scope link src 192.168.1.10

# 4. DNS lookup for a domain
echo "4. DNS lookup for github.com:"
# nslookup: query Internet domain name servers
nslookup github.com
# Sample output:
# Server:         8.8.8.8
# Address:        8.8.8.8#53
# Non-authoritative answer:
# Name:   github.com
# Address: 140.82.113.3

# 5. Show open network ports and listening services
echo "5. List open ports and listening services:"
# ss: socket statistics
# -t: TCP sockets
# -u: UDP sockets
# -l: listening sockets
# -n: show numerical addresses
ss -tuln
# Sample output:
# Netid State  Recv-Q Send-Q Local Address:Port  Peer Address:Port
# tcp   LISTEN 0      128    0.0.0.0:22         0.0.0.0:*
# udp   UNCONN 0      0      0.0.0.0:68         0.0.0.0:*

# 6. Download a file from the internet
echo "6. Download a file using curl:"
# curl: transfer data from or to a server
# -O: write output to a file named as the remote file
curl -O https://www.example.com/index.html
# Sample output:
#   % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
#                                  Dload  Upload   Total   Spent    Left  Speed
# 100   125  100   125    0     0    500      0 --:--:-- --:--:-- --:--:--   500

# 7. Trace the route to a remote server
echo "7. Trace route to google.com:"
# traceroute: print the route packets take to network host
traceroute google.com
# Sample output:
# traceroute to google.com (142.250.190.78), 30 hops max
#  1  192.168.1.1 (192.168.1.1)  1.123 ms
#  2  10.0.0.1 (10.0.0.1)  2.456 ms
#  ...
# 10  142.250.190.78 (142.250.190.78)  12.345 ms

# 8. Display ARP table
echo "8. Show ARP table:"
# arp: manipulate the system ARP cache
# -a: display all entries
arp -a
# Sample output:
# ? (192.168.1.1) at 00:11:22:33:44:55 [ether] on eth0
# ? (192.168.1.20) at 66:77:88:99:aa:bb [ether] on eth0

# 9. Test TCP connectivity to a port
echo "9. Test TCP connectivity to github.com on port 443:"
# nc: netcat, utility for network connections
# -z: zero-I/O mode (just scan)
# -v: verbose
nc -zv github.com 443
# Sample output:
# Connection to github.com 443 port [tcp/https] succeeded!

# 10. Monitor network traffic in real-time
echo "10. Monitor network traffic (requires sudo):"
# sudo: run command as superuser
# tcpdump: packet analyzer
# -i any: listen on all interfaces
# -c 10: capture 10 packets
sudo tcpdump -i any -c 10
# Sample output:
# tcpdump: verbose output suppressed, use -v or -vv for full protocol decode
# 10 packets captured

echo "Done. These commands help you understand and troubleshoot networking on Linux."