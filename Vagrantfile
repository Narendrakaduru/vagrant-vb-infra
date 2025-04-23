Vagrant.configure("2") do |config|

  config.vm.define "srv1" do |srv1|
    srv1.vm.box = "bento/ubuntu-22.04"
    srv1.vm.network "public_network", ip: "192.168.1.91"
    srv1.vm.hostname = "vldocsrv091"
    srv1.vm.provider "virtualbox" do |vb|
      vb.name = "Vagrant-VLDOCSRV091"
      vb.memory = 2048
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
    srv4.vm.box = "baunegaard/win10pro-en"
    srv4.vm.communicator = "winrm"
    srv4.vm.synced_folder "D:/VMS", "C:/vagrant"
    srv4.vm.network "public_network", ip: "192.168.1.94"
    srv4.vm.hostname = "vwappsrv094"
    srv4.vm.provider "virtualbox" do |vb|
      vb.name = "Vagrant-VWAPPSRV094"
      vb.memory = 4096
      vb.cpus = 4
      vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
      vb.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
      vb.customize ["modifyvm", :id, "--vram", "128"]
      vb.customize [
        "modifyvm", :id, 
        "--boot1", "floppy",
        "--boot2", "dvd",
        "--boot3", "disk"
      ]
      vb.customize ["modifyvm", :id, "--description", "IP: 192.168.1.94"]
    end
    #config.disksize.size = '50GB'
    # Adjust boot timeout
    srv4.vm.boot_timeout = 600
  end    
  
end
