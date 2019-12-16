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

