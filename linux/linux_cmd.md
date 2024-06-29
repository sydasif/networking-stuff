# Linux Networking Commands

## **To show the IP address assigned to an interface**

`ip address show`

## **To assign an IP to an interface, for example, ens33**

`ip address add 192.168.8.20/24 dev ens33`

## **To delete an IP on an interface**

`ip address del 192.168.8.20/24 dev ens33`

## **To online an interface**

`ip link set eth0 up`

## **To offline an interface**

`ip link set eth0 down`

## **To change an interface MTU, default MTU is 1500**

`ip link set eth0 mtu 9000`

## **To add a default route**

`ip route add default via 192.168.1.254 dev eth0`

## **To add a route to 192.168.1.0/24 via the gateway at 192.168.1.254**

`ip route add 192.168.1.0/24 via 192.168.1.254`

## **Add a route to 192.168.1.0/24 that can be reached on device**

`ip route add 192.168.1.0/24 dev ens33`

## **Delete the route for 192.168.1.0/24 via the gateway at 192.168.1.254**

`ip route delete 192.168.1.0/24 via 192.168.1.254`
