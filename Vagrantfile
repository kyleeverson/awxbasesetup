# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
	config.vm.define "ansible" do |ansible|
		ansible.vm.box = "geerlingguy/centos8"
		ansible.vm.hostname = "ansible"
		ansible.vm.network "private_network", ip: "192.168.33.10"
		ansible.vm.network "forwarded_port", guest: 80, host: 8080		
		ansible.vm.synced_folder "shared/", "/home/vagrant/shared"
		ansible.vm.provider "virtualbox" do |vb|
			vb.memory = 8192
			vb.cpus = 2
		end
	end
	config.vm.define "box1" do |box1|
		box1.vm.box = "geerlingguy/centos8"
		box1.vm.hostname = "box1"
		box1.vm.network "private_network", ip: "192.168.33.20"
		box1.vm.network "forwarded_port", guest: 80, host: 8080		
		box1.vm.synced_folder "shared/", "/home/vagrant/shared"
		box1.vm.provider "virtualbox" do |vb|
			vb.memory = 8192
			vb.cpus = 2
		end
	end
	
end
