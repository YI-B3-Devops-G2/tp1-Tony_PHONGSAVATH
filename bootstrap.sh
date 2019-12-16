     sudo apt-get update
     sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates
     curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
     sudo apt-get install -y nodejs
     sudo apt-get install -y nginx
     sudo apt-get install -y openssh-server
     sudo systemctl start nginx
     cd /var/www/html
     sudo echo "<!DOCTYPE html>
     <html>
     <body>
     B3 Devops - TP 1
     </body>
     </html>" > index.nginx-debian.html
     sudo systemctl restart nginx
