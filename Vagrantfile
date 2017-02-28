# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.hostname = "mahngiel"
  config.vm.box_check_update = false
  config.vm.network "forwarded_port", guest: 9001, host: 9001
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "private_network", ip: "192.168.30.100"
  config.vm.synced_folder "./provision", "/opt/", owner: "vagrant", group: "www-data"
  config.vm.synced_folder "./Home", "/Web/Home", owner: "vagrant", group: "www-data"

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = false
    # Customize the amount of memory on the VM:
    vb.memory = "2048"
  end

  config.vm.provision :shell, path: "provision/bootstrap.sh"
end
