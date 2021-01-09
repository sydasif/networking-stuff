# Configure ansible other then default location
# Use nano ansible.cfg and patse below text
# Create hosts file in same dir
# To create DNS name in linux go to cd /etc/hosts and edit hosts as required

[defaults]
inventory =./hosts
host_key_checking =False
deprecation_warnings=False
timeout=30 # default

# To saveOutPut

grep --color=auto "SUCCESS\|$"

# To ping

1. ansible network -i hosts -m ping -u admin -k -c network_cli

2. ansible network -m ping -c network_cli

3. ansible routers -m ping -c network_cli -e ansible_network_os=ios 
