# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "debian/jessie64"
  config.vm.hostname = "mahngiel"
  config.vm.box_check_update = false
  config.vm.network "forwarded_port", guest: 9001, host: 9001
  config.vm.network "private_network", ip: "192.168.30.100"
  config.vm.synced_folder "./", "/Web/Home"

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
    #   # Customize the amount of memory on the VM:
    vb.memory = "1024"
  end

  config.vm.provision :shell, path: "provision/bootstrap.sh"
end
