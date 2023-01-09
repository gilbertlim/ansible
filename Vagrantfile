# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.box = "generic/ubuntu2004" # x86
    # config.vm.box = "starboard/ubuntu-arm64-20.04.5" x arm64

    # use the same ssh key for each machine
    config.ssh.insert_key = false

    config.vm.define "vagrant1" do |vagrant1|
        # vagrant1.vm.box = ""
        vagrant1.vm.network "forwarded_port", guest: 80, host: 8080 # 8080 -> 80
        vagrant1.vm.network "forwarded_port", guest: 443, host: 8443 # 8443 -> 443
    end
    config.vm.define "vagrant2" do |vagrant2|
        # vagrant1.vm.box = ""
        vagrant2.vm.network "forwarded_port", guest: 80, host: 8081 # 8080 -> 80
        vagrant2.vm.network "forwarded_port", guest: 443, host: 8444 # 8443 -> 443
    end
    config.vm.define "vagrant3" do |vagrant3|
        # vagrant1.vm.box = ""
        vagrant3.vm.network "forwarded_port", guest: 80, host: 8082 # 8080 -> 80
        vagrant3.vm.network "forwarded_port", guest: 443, host: 8445 # 8443 -> 443
    end

    config.vm.provider "vmware_desktop" do |v|
        v.gui = true
        v.linked_clone = false
        v.vmx["ethernet0.virtualdev"] = "vmxnet3"
        
        v.cpus = 2
        v.memory = "2048" # 2G
  end

end