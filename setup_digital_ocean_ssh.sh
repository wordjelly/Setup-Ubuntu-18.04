#!/bin/bash

################################################
# RUN FROM YOUR LOCAL MACHINE.
################################################
# Copy SSH Keys from your local machine
ssh-copy-id root@$DIGITAL_OCEAN_SERVER_ID


################################################
# RUN INSIDE THE SERVER
################################################
# 2. Change the server password settings.
cd /etc/ssh/sshd_config
# PermitRootLogin prohibit-password
# PasswordAuthentication no

# RESTART THE SSHD_SERVICE ON THE DROPLET
sudo systemctl restart ssh

# now sign exit the shell and try to ssh into it.
# now after ssh in, create a sudo user
# set a strong password.
# a user called bhargav.
sudo adduser bhargav

## after setting it up add it to the sudo group.
sudo usermod -a -G sudo bhargav


###################################################
#
# SETUP SSH KEYS AS BHARGAV
#
###################################################
su -l bhargav
ssh-keygen 
## use a passphrase, anything is better than nothing.
## to echo the ssh key
cat /home/bhargav/.ssh/id_rsa.pub