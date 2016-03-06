# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"

  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end

  config.vm.define "test" do |test|
    test.vm.hostname = "test"
    test.vm.provision "ansible" do |ansible|
      ansible.playbook = "test.yml"
      ansible.verbose = 'vv'
      ansible.become = true
    end
  end
end
