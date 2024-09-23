Vagrant.configure("2") do |config|


  config.vm.define "dns" do |dns|
    dns.vm.box = "bento/ubuntu-22.04"
    dns.vm.network "private_network", type: "static", ip: "192.168.10.90"
    dns.vm.hostname = "dns"
    dns.vm.provider "virtualbox" do |vb|
      vb.name = "Vagrant-dns"
      vb.memory = 1024
      vb.cpus = 1
      vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
      vb.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
      vb.customize ["modifyvm", :id, "--vram", "16"]
      vb.customize [
        "modifyvm", :id, 
        "--boot1", "dvd",
        "--boot2", "disk"
      ]
      vb.customize ["modifyvm", :id, "--description", "IP: 192.168.10.90"]
    end
	dns.vm.provision "shell", path: "scripts/update.sh"
	dns.vm.provision "shell", path: "scripts/create_user.sh"
  dns.vm.provision "shell", path: "scripts/dns.sh"
	dns.vm.provision "shell", path: "scripts/node_exporter.sh"
  end

  config.vm.define "ansible" do |ansible|
    ansible.vm.box = "bento/ubuntu-22.04"
    ansible.vm.network "private_network", type: "static", ip: "192.168.10.91"
    ansible.vm.hostname = "ansible"
    ansible.vm.provider "virtualbox" do |vb|
      vb.name = "Vagrant-ansible"
      vb.memory = 1024
      vb.cpus = 1
      vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
      vb.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
      vb.customize ["modifyvm", :id, "--vram", "16"]
      vb.customize [
        "modifyvm", :id, 
        "--boot1", "dvd",
        "--boot2", "disk"
      ]
      vb.customize ["modifyvm", :id, "--description", "IP: 192.168.10.91"]
    end
	ansible.vm.provision "shell", path: "scripts/update.sh"
	ansible.vm.provision "shell", path: "scripts/create_user.sh"
  ansible.vm.provision "shell", path: "scripts/ansible.sh"
	ansible.vm.provision "shell", path: "scripts/node_exporter.sh"
  end

  config.vm.define "docker" do |docker|
    docker.vm.box = "bento/ubuntu-22.04"
    docker.vm.network "private_network", type: "static", ip: "192.168.10.92"
    docker.vm.hostname = "VLDOCSRV002"
    docker.vm.provider "virtualbox" do |vb|
      vb.name = "Vagrant-docker"
      vb.memory = 2048
      vb.cpus = 2
    end
    docker.vm.provision "shell", path: "scripts/update.sh"
    docker.vm.provision "shell", path: "scripts/create_user.sh"
    docker.vm.provision "shell", path: "scripts/docker.sh"
    docker.vm.provision "shell", path: "scripts/node_exporter.sh"
end

config.vm.define "artifactory" do |artifactory|
  artifactory.vm.box = "bento/ubuntu-22.04"
  artifactory.vm.network "private_network", type: "static", ip: "192.168.10.93"
  artifactory.vm.hostname = "VLARTSRV003"
  artifactory.vm.provider "virtualbox" do |vb|
    vb.name = "Vagrant-artifactory"
    vb.memory = 4096
    vb.cpus = 4
  end
artifactory.vm.provision "shell", path: "scripts/update.sh"
artifactory.vm.provision "shell", path: "scripts/create_user.sh"
artifactory.vm.provision "shell", path: "scripts/artifactory.sh"
artifactory.vm.provision "shell", path: "scripts/node_exporter.sh"
end

  config.vm.define "grafana" do |grafana|
    grafana.vm.box = "bento/ubuntu-22.04"
    grafana.vm.network "private_network", type: "static", ip: "192.168.10.94"
    grafana.vm.hostname = "VLGRFSRV004"
    grafana.vm.provider "virtualbox" do |vb|
      vb.name = "Vagrant-grafana"
      vb.memory = 2048
      vb.cpus = 2
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
    
    config.disksize.size = '50GB'
    # Adjust boot timeout
    windows.vm.boot_timeout = 600
  end    
  
end
