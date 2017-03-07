# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "debian/jessie64"
  config.vm.hostname = "mahngiel"
  config.vm.box_check_update = false

  config.vm.network "forwarded_port", guest: 9001, host: 9001
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "private_network", ip: "192.168.30.100"

  config.vm.synced_folder ".", "/vagrant", type: 'nfs'

  config.vm.provision :shell, inline: "apt-get update && apt-get install -y vim"
  config.vm.provision :docker
  config.vm.provision :docker_compose, run: "always", yml: "/vagrant/docker-compose.yml"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "2048"
  end

end
