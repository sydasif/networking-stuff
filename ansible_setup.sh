####### INSTALL AND CONFIG ##########

sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible -y

#confirm working by running the ping module against localhost:
ansible localhost -m ping

###### REMOTE HOSTS #######
#create local hostnames in hosts file
sudo nano /etc/hosts

#Create SSH key on ansible server
ssh-keygen -t rsa -b 2048

#list the keys to verify
ls .ssh

#copy the key to other machines
ssh-copy-id -i .ssh/id_rsa.pub ubuntu

#Now configure sudo so that it doesnt require a password
ssh ubuntu1 
sudo visudo

#very bottom of file add this line:
syd ALL=(ALL) NOPASSWD: ALL

###### INVENTORY #######
sudo nano /etc/ansible/hosts

#create GUI group like so at bottom of file
[linuxhosts]
ubuntu
centos

## can also specify username 
ubuntu1 ansible_user=administrator

ansible -m ping all

#raw module with the uptime action (-a)
ansible -m raw -a '/usr/bin/uptime' linuxhosts
ansible -m shell -a 'python3 -V' linuxhosts
ansible all -a 'whoami'

#elevate to root with -b for become. Why? Because ansible doesnt elevate to sudo by default
ansible all -b -a 'whoami'

########### Networking Inv/Vars #########
[network]
R1 ansible_host=192.168.52.71 
S1 ansible_host=192.168.52.72 
[network:vars]
ansible_user=admin
ansible_password=cisco 
ansible_network_os=ios 
ansible_connection=network_cli