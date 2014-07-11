# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/precise32"
  config.vm.network "forwarded_port", guest: 6379, host: 6379
  config.vm.provider :virtualbox do |vb|
	vb.customize ["modifyvm", :id, "--memory", 1024] 
  end
  config.vm.provision "shell", path: "init.sh"
end
