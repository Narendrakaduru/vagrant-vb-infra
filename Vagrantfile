Vagrant.configure("2") do |config|

  config.vm.define "srv1" do |srv1|
    srv1.vm.box = "bento/ubuntu-22.04"
    srv1.vm.network "public_network", ip: "192.168.1.91"
    srv1.vm.hostname = "vldocsrv091"
    srv1.vm.provider "virtualbox" do |vb|
      vb.name = "Vagrant-VLDOCSRV091"
      vb.memory = 4096
      vb.cpus = 2
      vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
      vb.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
      vb.customize ["modifyvm", :id, "--vram", "16"]
      vb.customize [
        "modifyvm", :id, 
        "--boot1", "dvd",
        "--boot2", "disk"
      ]
      vb.customize ["modifyvm", :id, "--description", "IP: 192.168.1.91"]
    end
	srv1.vm.provision "shell", path: "scripts/update.sh"
	srv1.vm.provision "shell", path: "scripts/create_user.sh"
  srv1.vm.provision "shell", path: "scripts/docker.sh"
  end

  config.vm.define "srv2" do |srv2|
    srv2.vm.box = "bento/ubuntu-22.04"
    srv2.vm.network "public_network", ip: "192.168.1.92"
    srv2.vm.hostname = "vldocsrv092"
    srv2.vm.provider "virtualbox" do |vb|
      vb.name = "Vagrant-VLDOCSRV092"
      vb.memory = 6122
      vb.cpus = 4
      vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
      vb.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
      vb.customize ["modifyvm", :id, "--vram", "16"]
      vb.customize [
        "modifyvm", :id, 
        "--boot1", "dvd",
        "--boot2", "disk"
      ]
      vb.customize ["modifyvm", :id, "--description", "IP: 192.168.1.92"]
    end
    srv2.vm.provision "shell", path: "scripts/update.sh"
	  srv2.vm.provision "shell", path: "scripts/create_user.sh"
    srv2.vm.provision "shell", path: "scripts/docker.sh"
  end

  config.vm.define "srv3" do |srv3|
    srv3.vm.box = "bento/ubuntu-22.04"
    srv3.vm.network "public_network", ip: "192.168.1.93"
    srv3.vm.hostname = "vldocsrv093"
    srv3.vm.provider "virtualbox" do |vb|
      vb.name = "Vagrant-VLDOCSRV093"
      vb.memory = 4096
      vb.cpus = 4
      vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
      vb.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
      vb.customize ["modifyvm", :id, "--vram", "16"]
      vb.customize [
        "modifyvm", :id, 
        "--boot1", "dvd",
        "--boot2", "disk"
      ]
      vb.customize ["modifyvm", :id, "--description", "IP: 192.168.1.93"]
    end
    srv3.vm.provision "shell", path: "scripts/update.sh"
    srv3.vm.provision "shell", path: "scripts/create_user.sh"
    srv3.vm.provision "shell", path: "scripts/docker.sh"
  end

  config.vm.define "srv4" do |srv4|
    srv4.vm.box = "bento/ubuntu-22.04"
    srv4.vm.network "public_network", ip: "192.168.1.94"
    srv4.vm.hostname = "vldocsrv094"
    srv4.vm.provider "virtualbox" do |vb|
      vb.name = "Vagrant-VLDOCSRV094"
      vb.memory = 8192
      vb.cpus = 4
      vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
      vb.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
      vb.customize ["modifyvm", :id, "--vram", "16"]
      vb.customize [
        "modifyvm", :id, 
        "--boot1", "dvd",
        "--boot2", "disk"
      ]
      vb.customize ["modifyvm", :id, "--description", "IP: 192.168.1.94"]
    end
    srv4.vm.provision "shell", path: "scripts/update.sh"
    srv4.vm.provision "shell", path: "scripts/create_user.sh"
    srv4.vm.provision "shell", path: "scripts/docker.sh"
  end

  config.vm.define "srv5" do |srv5|
    srv5.vm.box = "gusztavvargadr/windows-10"
    srv5.vm.network "public_network", ip: "192.168.1.95"
    srv5.vm.hostname = "vwdocsrv095"
    srv5.vm.provider "virtualbox" do |vb|
      vb.name = "Vagrant-VWDOCSRV095"
      vb.memory = 4096
      vb.cpus = 4
      vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
      vb.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
      vb.customize ["modifyvm", :id, "--vram", "128"]
      vb.customize ["modifyvm", :id, "--description", "IP: 192.168.1.95"]
    end
  end

  config.vm.define "srv6" do |srv6|
    srv6.vm.box = "bento/ubuntu-22.04"
    srv6.vm.network "public_network", ip: "192.168.1.96"
    srv6.vm.hostname = "vldocsrv096"
    srv6.vm.provider "virtualbox" do |vb|
      vb.name = "Vagrant-VLDOCSRV096"
      vb.memory = 4096
      vb.cpus = 4
      vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
      vb.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
      vb.customize ["modifyvm", :id, "--vram", "16"]
      vb.customize [
        "modifyvm", :id, 
        "--boot1", "dvd",
        "--boot2", "disk"
      ]
      vb.customize ["modifyvm", :id, "--description", "IP: 192.168.1.96"]
    end
    srv6.vm.provision "shell", path: "scripts/update.sh"
    srv6.vm.provision "shell", path: "scripts/create_user.sh"
    srv6.vm.provision "shell", path: "scripts/docker.sh"
  end

  config.vm.define "srv7" do |srv7|
    srv7.vm.box = "bento/ubuntu-22.04"
    srv7.vm.network "public_network", ip: "192.168.1.97"
    srv7.vm.hostname = "vldocsrv097"
    srv7.vm.provider "virtualbox" do |vb|
      vb.name = "Vagrant-VLDOCSRV097"
      vb.memory = 4096
      vb.cpus = 4
      vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
      vb.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
      vb.customize ["modifyvm", :id, "--vram", "16"]
      vb.customize [
        "modifyvm", :id, 
        "--boot1", "dvd",
        "--boot2", "disk"
      ]
      vb.customize ["modifyvm", :id, "--description", "IP: 192.168.1.97"]
    end
    srv7.vm.provision "shell", path: "scripts/update.sh"
    srv7.vm.provision "shell", path: "scripts/create_user.sh"
    srv7.vm.provision "shell", path: "scripts/docker.sh"
  end

  config.vm.define "srv8" do |srv8|
    srv8.vm.box = "bento/ubuntu-22.04"
    srv8.vm.network "public_network", ip: "192.168.1.98"
    srv8.vm.hostname = "vldocsrv098"
    srv8.vm.provider "virtualbox" do |vb|
      vb.name = "Vagrant-VLDOCSRV098"
      vb.memory = 4096
      vb.cpus = 4
      vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
      vb.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
      vb.customize ["modifyvm", :id, "--vram", "16"]
      vb.customize [
        "modifyvm", :id, 
        "--boot1", "dvd",
        "--boot2", "disk"
      ]
      vb.customize ["modifyvm", :id, "--description", "IP: 192.168.1.98"]
    end
    srv8.vm.provision "shell", path: "scripts/update.sh"
    srv8.vm.provision "shell", path: "scripts/create_user.sh"
    srv8.vm.provision "shell", path: "scripts/docker.sh"
  end
  
end
