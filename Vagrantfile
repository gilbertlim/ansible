# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.box = "starboard/ubuntu-arm64-20.04.5"
    config.vm.network "forwarded_port", guest: 80, host: 8080
    config.vm.network "forwarded_port", guest: 443, host: 8443
    
    config.vm.provider "vmware_desktop" do |v|
        v.gui = true
        v.linked_clone = false
        v.vmx["ethernet0.virtualdev"] = "vmxnet3"
        
        v.cpus = 2
        v.memory = "2048" # 2G
  end

end
