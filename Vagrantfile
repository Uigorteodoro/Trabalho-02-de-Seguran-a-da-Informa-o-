# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
  (1..3).each do |i|
    maquinavirtual_nome = "maquinavirtual#{i}"

    config.vm.define maquinavirtual_nome do |maquinavirtual|
      maquinavirtual.vm.box = "ubuntu/bionic64"
      maquinavirtual.vm.provider "virtualbox" do |vb|
        vb.memory = 512
      end

      if i == 1
        maquinavirtual.vm.network "private_network", ip: "192.168.52.15"
        maquinavirtual.vm.provision "shell", path: "script1.sh"
      elsif i == 2
        maquinavirtual.vm.network "private_network", ip: "192.168.52.254"
        maquinavirtual.vm.network "private_network", ip: "10.0.0.254"
        maquinavirtual.vm.provision "shell", path: "script2.sh"
      elsif i == 3
        maquinavirtual.vm.network "private_network", ip: "10.0.0.15"
        maquinavirtual.vm.provision "shell", path: "script3.sh"
      end
    end
  end
end
