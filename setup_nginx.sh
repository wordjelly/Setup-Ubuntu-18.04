sudo apt update
sudo apt install nginx

## check the options
sudo ufw app list

## allow on the http port.
sudo ufw allow 'Nginx HTTP'
## do this otherwise you won't be able to ssh into the droplet after the next restart.
sudo ufw allow 'OpenSSH'

sudo ufw enable
## after this press 'y' to the prompt.
## y

## then check the status
sudo ufw status

## it should show http enabled on nginx.

## check the status of nginx, should be on.
systemctl status nginx

## check if it actually works with
ip addr show eth0 | grep inet | awk '{ print $2; }' | sed 's/\/.*$//'

