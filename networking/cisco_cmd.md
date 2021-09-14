# Basic Configuration

```cisco
conf t
!
username admin pri 15 secret cisco
enable secret cisco
!
line con 0
 password cisco
 exec-timeout 0 0
 login
 logging synchronous
!
line vty 0 4
 login local
 logging synchronous
 tra in all
!
end
```

## SSH Configuration

```cisco
conf t
!
no ip domain-lookup
ip domain-name lab.com
crypto key generate rsa modulus 2048
!
end
!
wr
```
