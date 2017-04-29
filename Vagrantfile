# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end

  config.vm.define "test" do |test|
    test.vm.box = "ubuntu/trusty64"
    test.vm.hostname = "test"
    test.vm.provision "ansible" do |ansible|
      ansible.playbook = "test.yml"
      ansible.verbose = 'vv'
      ansible.become = true
    end
  end

  config.vm.define "test02", autostart: false do |test02|
    test02.vm.box = "centos/7"
    test02.vm.hostname = "testrhel"
    test02.vm.provision "ansible" do |ansible|
      ansible.playbook = "testrhel.yml"
      ansible.verbose = 'vv'
      ansible.sudo = true
    end
  end

  config.vm.define "test03", autostart: false do |test03|
    test03.vm.box = "centos/6"
    test03.vm.hostname = "testrhel6"
    test03.vm.provision "ansible" do |ansible|
      ansible.playbook = "testrhel6.yml"
      ansible.verbose = 'vv'
      ansible.sudo = true
    end
  end
end
