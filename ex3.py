import paramiko, time

#Sets up the ssh session and log in as "admin" with password "cisco" to host '192.168.100.22' . 
#Also added "look_for_keys=False" and "allow_agent=False". 
#Sends the 'enable' command to enter privilidged mode.
#Note the '\n' after the command, this is equivalent to pressing "Enter".
#Also note that '\n' is there at the end, you should realize we need this after every command.

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect('192.168.100.22', username='admin', password='cisco', look_for_keys=False, allow_agent=False)

#Creates a channel object, to overcome weirdness with cisco devices
connect = ssh.invoke_shell()

connect.send("enable\n")
time.sleep(1)
connect.recv(9999)

connect.send("cisco\n")
time.sleep(1)
connect.recv(9999)

connect.send("terminal length 0\n")
time.sleep(1)
connect.recv(9999)

connect.send("show vlan brief\n")
time.sleep(1)
output = connect.recv(9999)
#To print each 
print(output.decode('Utf-8'))