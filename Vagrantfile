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
    srv3.vm.network "public_network", ip: "192.168.1.92"
    srv3.vm.hostname = "VLDOCSRV003"
    srv3.vm.provider "virtualbox" do |vb|
      vb.name = "Vagrant-VLDOCSRV003"
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
    srv3.vm.provision "shell", path: "scripts/update.sh"
    srv3.vm.provision "shell", path: "scripts/create_user.sh"
    srv3.vm.provision "shell", path: "scripts/docker.sh"
end

config.vm.define "artifactory" do |artifactory|
  artifactory.vm.box = "bento/ubuntu-22.04"
  artifactory.vm.network "public_network", ip: "192.168.1.93"
  artifactory.vm.hostname = "artifactory"
  artifactory.vm.provider "virtualbox" do |vb|
    vb.name = "Vagrant-artifactory"
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
artifactory.vm.provision "shell", path: "scripts/update.sh"
artifactory.vm.provision "shell", path: "scripts/create_user.sh"
artifactory.vm.provision "shell", path: "scripts/artifactory.sh"
artifactory.vm.provision "shell", path: "scripts/node_exporter.sh"
end

  config.vm.define "grafana" do |grafana|
    grafana.vm.box = "bento/ubuntu-22.04"
    grafana.vm.network "public_network", ip: "192.168.1.94"
    grafana.vm.hostname = "grafana"
    grafana.vm.provider "virtualbox" do |vb|
      vb.name = "Vagrant-grafana"
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
      vb.customize ["modifyvm", :id, "--description", "IP: 192.168.1.94"]
    end
	grafana.vm.provision "shell", path: "scripts/update.sh"
	grafana.vm.provision "shell", path: "scripts/create_user.sh"
	grafana.vm.provision "shell", path: "scripts/grafana.sh"
  end

  config.vm.define "k8s-master" do |k8s_master|
    k8s_master.vm.box = "bento/ubuntu-22.04"
    k8s_master.vm.network "private_network", type: "static", ip: "192.168.10.92"
    k8s_master.vm.hostname = "VLKMSSRV002"
    k8s_master.vm.provider "virtualbox" do |vb|
      vb.name = "Vagrant-k8s-master"
      vb.memory = 4096
      vb.cpus = 4
    end
    k8s_master.vm.provision "shell", path: "scripts/update.sh"
    k8s_master.vm.provision "shell", path: "scripts/create_user.sh"
    k8s_master.vm.provision "shell", path: "scripts/k8s.sh"
  end

  config.vm.define "k8s-node-1" do |k8s_node_1|
    k8s_node_1.vm.box = "bento/ubuntu-22.04"
    k8s_node_1.vm.network "private_network", type: "static", ip: "192.168.10.93"
    k8s_node_1.vm.hostname = "VLKNSSRV003"
    k8s_node_1.vm.provider "virtualbox" do |vb|
      vb.name = "Vagrant-k8s-node-1"
      vb.memory = 2048
      vb.cpus = 2
    end
    k8s_node_1.vm.provision "shell", path: "scripts/update.sh"
    k8s_node_1.vm.provision "shell", path: "scripts/create_user.sh"
    k8s_node_1.vm.provision "shell", path: "scripts/k8s.sh"
  end

  config.vm.define "windows" do |windows|
    windows.vm.box = "gusztavvargadr/windows-10"
    windows.vm.communicator = "winrm"
    windows.vm.synced_folder "D:/VMS", "C:/vagrant"
    windows.vm.network "private_network", type: "static", ip: "192.168.10.97"
    windows.vm.hostname = "VWAPPSRV007"
      
    windows.vm.provider "virtualbox" do |vb|
      vb.name = "Vagrant-windows"

      # Allocate memory and CPUs
      vb.customize ["modifyvm", :id, "--memory", "2048"]
      vb.customize ["modifyvm", :id, "--cpus", "2"]

      # Video memory and 3D acceleration
      vb.customize ["modifyvm", :id, "--vram", "128"]
      vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
  
      # Clipboard sharing
      vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
  
      # Network interfaces
      vb.customize ["modifyvm", :id, "--nic1", "nat"]
      vb.customize ["modifyvm", :id, "--nictype1", "82540EM"]
  
      vb.customize ["modifyvm", :id, "--nic2", "hostonly"]
      vb.customize ["modifyvm", :id, "--nictype2", "82540EM"]
      vb.customize ["modifyvm", :id, "--hostonlyadapter2", "VirtualBox Host-Only Ethernet Adapter #2"]
    end
    
    #config.disksize.size = '50GB'
    # Adjust boot timeout
    windows.vm.boot_timeout = 600
  end    
  
end
