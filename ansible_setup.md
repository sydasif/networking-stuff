## Ansible Installation on Ubuntu

```terminal
sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt install ansible -y
```
**confirm working by running the ping module against localhost**

`ansible localhost -m ping`

**Create local hostnames in hosts file**

```terminal
sudo nano /etc/hosts
192.168.1.10    ubuntu
```

**Create SSH key on ansible server**

`ssh-keygen -t rsa -b 2048`

**list the keys to verify**

`ls .ssh`

**Copy the key to remote machines**

`ssh-copy-id -i .ssh/id_rsa.pub ubuntu`

**Now configure sudo so that it doesn't require a password**

```terminal
ssh ubuntu
sudo visudo
```

**Got to the bottom of the file add this line**

`<username> ALL=(ALL) NOPASSWD: ALL`

**Inventory**

`sudo nano /etc/ansible/hosts`

**Create group like so at bottom of file**

```terminal
[linuxhosts]
ubuntu
```

**Can also specify username**

`ubuntu ansible_user=admin`

**Use raw module**

1. `ansible -m raw -a '/usr/bin/uptime' linuxhosts`
2. `ansible -m shell -a 'python3 -V' linuxhosts`
3. `ansible all -a 'whoami'`

**Elevate to root with -b for become. Why? Because Ansible doesn't elevate to sudo by default**

`ansible all -b -a 'whoami'`

### Configure ansible other than the default location

1. Use nano ansible.cfg and paste below text
2. Create hosts file in the same directory

```terminal
[defaults]
inventory =./hosts
host_key_checking =False
deprecation_warnings=False
timeout=30
```

#### Networking Device Inv/Vars
```terminal
[network]
R1 ansible_host=192.168.52.71 
S1 ansible_host=192.168.52.72 
[network:vars]
ansible_user=admin
ansible_password=cisco 
ansible_network_os=ios 
ansible_connection=network_cli
```

#### Adhoc command for network device

1. ansible network -i hosts -m ping -u admin -k -c network_cli
2. ansible network -m ping -c network_cli
3. ansible routers -m ping -c network_cli -e ansible_network_os=ios
