#!/bin/bash

# 1. Display IP address and network interfaces
echo "1. Show IP addresses and interfaces:"
# ip: command for network interface configuration
# addr: show addresses
# show: display information
ip addr show
# Example: Use this to find your machine's IP address.

# 2. Check network connectivity (ping)
echo "2. Ping google.com to test connectivity:"
# ping: send ICMP ECHO_REQUEST to network hosts
# -c 4: send 4 packets
ping -c 4 google.com
# Example: Use this to check if you can reach the internet.

# 3. Display routing table
echo "3. Show routing table:"
# ip: network configuration tool
# route: routing table management
# show: display routes
ip route show
# Example: See how your machine routes network traffic.

# 4. DNS lookup for a domain
echo "4. DNS lookup for github.com:"
# nslookup: query Internet domain name servers
nslookup github.com
# Example: Find the IP address of a website.

# 5. Show open network ports and listening services
echo "5. List open ports and listening services:"
# ss: socket statistics
# -t: TCP sockets
# -u: UDP sockets
# -l: listening sockets
# -n: show numerical addresses
ss -tuln
# Example: Check which services are listening for connections.

# 6. Download a file from the internet
echo "6. Download a file using curl:"
# curl: transfer data from or to a server
# -O: write output to a file named as the remote file
curl -O https://www.example.com/index.html
# Example: Download a web page to your current directory.

# 7. Trace the route to a remote server
echo "7. Trace route to google.com:"
# traceroute: print the route packets take to network host
traceroute google.com
# Example: See the path your packets take to reach Google.

# 8. Display ARP table
echo "8. Show ARP table:"
# arp: manipulate the system ARP cache
# -a: display all entries
arp -a
# Example: See which devices are on your local network.

# 9. Test TCP connectivity to a port
echo "9. Test TCP connectivity to github.com on port 443:"
# nc: netcat, utility for network connections
# -z: zero-I/O mode (just scan)
# -v: verbose
nc -zv github.com 443
# Example: Check if you can connect to GitHub's HTTPS port.

# 10. Monitor network traffic in real-time
echo "10. Monitor network traffic (requires sudo):"
# sudo: run command as superuser
# tcpdump: packet analyzer
# -i any: listen on all interfaces
# -c 10: capture 10 packets
sudo tcpdump -i any -c 10
# Example: Capture 10 packets on any interface.

echo "Done. These commands help you understand and troubleshoot networking on Linux."