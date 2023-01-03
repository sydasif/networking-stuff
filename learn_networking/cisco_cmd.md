# SSH Configuration

```console
conf t
!
username admin pri 15 secret cisco
enable secret cisco
!
no ip domain-lookup
ip domain-name lab.com
crypto key generate rsa
1024
!
line vty 0 4
 login local
 logging synchronous
 tra in all
!
end
```
