# Network Address Translation

Network Address Translation (NAT) is designed for IP address conservation. It enables private IP networks that use unregistered IP addresses to connect to the Internet. NAT operates on a router, usually connecting two networks together, and translates the private (not globally unique) addresses in the internal network into legal addresses, before packets are forwarded to another network. NAT was implemented to deter the exhaustion of IP address space.

## Static NAT

* One to one mapping of Privat IP Address into Public IP Address
* Usefull when access internal server from outside the network

![Static NAT](https://github.com/sydasif/networking-stuff/blob/master/networking/NAT/static-nat.png)

## Dynamic NAT

* A group/range of Private IP Address into Public IP Address
* Usefull when two companies are merged with same internal IP Adressing
* Not very efficient, used when neccessary
 
![Dynamic NAT](https://github.com/sydasif/networking-stuff/blob/master/networking/NAT/dynamic-nat.png)

## PAT / NAT Overload

* Multiple Private IP Addresses into single public IP Address
* Type of dynamic NAT
* Use port numbers
* Common type of NAT
* Used by ISP's
* Overloading is also called Port Address Translation

![PAT / NAT](https://github.com/sydasif/networking-stuff/blob/master/networking/NAT/pat-nat.png)
