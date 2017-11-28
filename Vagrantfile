# -*- mode: ruby -*-
# vi: set ft=ruby :
#
# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "base"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.hostname = "teamcity"
  config.vm.network "private_network", ip: "10.2.2.201"
  config.vm.network :forwarded_port, guest: 22, host: 1234
  config.vm.network :forwarded_port, guest: 8111, host: 8081

  config.vm.provision :shell do |shell|
    shell.path = "bin/setup.sh"
    shell.privileged = false
  end

  config.ssh.forward_agent = true

  config.vm.provider :virtualbox do |vb|
    vb.name = 'teamcity'
    vb.customize ["modifyvm", :id, "--accelerate3d", "off"]
    vb.customize [ "guestproperty", "set", :id, "/VirtualBox/GuestAdd/VBoxService/--timesync-set-threshold", 10000 ]
    vb.memory = 1024
    vb.cpus = 2
  end

end
