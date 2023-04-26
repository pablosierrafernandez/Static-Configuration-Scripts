# Static-Configuration-Scripts
📡These are two Bash scripts designed to set up a static network configuration on a router and a server.

## Router Script

The router script configures the router with the following settings:

-   IP addresses: 192.0.2.1/29 on eth0 and eth1 interfaces
-   IP forwarding is enabled
-   Server's IP address is added to /etc/hosts file
-   iptables rules are added for NAT and MASQUERADE
-   Root password is set to "milax"
-   SSH root login is enabled
-   SSH service is restarted and connects to the server

To run the script, execute the following command:

`sudo ./router.sh` 

## Server Script

The server script configures the server with the following settings:

-   IP address: 192.0.2.4/29
-   /etc/network/interfaces file is updated with the above IP address
-   Networking is restarted
-   Router's IP address is added to /etc/hosts file
-   Root password is set to "milax"
-   SSH root login is enabled
-   SSH service is restarted and connects to the router

To run the script, execute the following command:

`sudo ./server.sh` 

**Note:** Before running these scripts, make sure to replace the "milax" password with a secure password.
