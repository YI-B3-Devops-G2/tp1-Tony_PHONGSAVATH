# B3 Devops - TP 1

## Info

mail : tony.phongsavath@ynov.com

github_username : tonyphg

## Démarche

- Installation de vagrant https://www.vagrantup.com/

- Lancement de PowerShell

- Création d'un répertoire où sera stocké les fichiers "VagrantFile" et "bootstrap.sh" --> mkdir VagrantTP + cd VagrantTP

- Saisie des commandes suivantes sur PowerShell : 

vagrant init bento/ubuntu-18.04

vagrant up

- Modification du fichier VagrantFile généré (voir VagrantFile sur le répo) :

Vagrant.configure("2") do |config|

 config.vm.box = "bento/ubuntu-18.04"
 
 config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
 
 config.vm.network "forwarded_port", guest: 22, host: 2220, host_ip: "127.0.0.1"
 
 config.vm.network "forwarded_port", guest: 443, host: 4343, host_ip: "127.0.0.1"
 
 config.vm.provider "virtualbox" do |v|
 
  v.memory = 1024
  
  v.cpus = 1
  
  end
  
 config.vm.provision "shell", path: "bootstrap.sh"
 
end

- Création du fichier bootstrap.sh (voir dans la répo "bootstrap.sh")

- Suppression de la VM pour voir si la démarche est OK --> vagrant destroy -y

- Recréation d'une VM avec la prise en compte du script "bootstrap.sh" et du fichier "VagrantFile" --> vagrant up

---------------------------------------------------------------------------------

--> VM créée avec 1 GB de RAM et la bonne version de Ubuntu Server (18.04.3 LTS)

--> Update automatique des paquets + installation automatique des paquets (nodejs v12, openssh-server, nginx) + modification automatique de index.nginx-debian.html

--> Connexion en SSH OK (ssh vagrant@127.0.0.1 -p 2220, MDP : vagrant)

--> Connexion en HTTP OK avec les bonnes modifications dans l'index (127.0.0.1:8080)
