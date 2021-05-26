## nginx server configuration
## create a file like so
## sudo nano /etc/nginx/sites-available/sme.conf
## add the following to that file:
## note that to setup using ssl, we will do for port 443., and use proxy pass with https
#server {
#    listen 80;
#    server_name just_ip_or_domain;

#    location / {
#        include proxy_params;
#        proxy_pass http://localhost:5000;
#    }
#}

# create a symlink
# this basically links available sites with enabled sites.
sudo ln -s /etc/nginx/sites-available/sme.conf /etc/nginx/sites-enabled/sme.conf

# remove default symlink
sudo rm /etc/nginx/sites-enabled/default

# now check if nginx config is lk
nginx -t

# this should return something saying configuration is ok, if you get any errors, you screwed up the symlinks.
# now deny the port 5000, as we want shit to onto port
sudo ufw deny 5000
sudo ufw allow 80

# restart nginx
sudo systemctl restart nginx