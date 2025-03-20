# Introduction
Secure shell (SSH) is a communication protocol, in which data is encrypted on transit.

# Dependencies
## Domain Name System (DNS)
SSH relies on DNS to resolve the server names passed. If there are problems, e.g., mismatch between DNS server of the host and the DNS server of the Virtual Private Network (VPN), the connestion can be choppy at best or non-existentat worst. This becomes progressively more complicated with layered virtualization, e.g., docker stack deployed on Windows Subsystem for Linux, while being connected to a VPN.
