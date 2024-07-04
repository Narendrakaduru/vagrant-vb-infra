Vagrant.configure("2") do |config|
  config.vm.define "ansible" do |ansible|
    ansible.vm.box = "bento/ubuntu-22.04"
    ansible.vm.network "private_network", type: "static", ip: "192.168.10.90"
    ansible.vm.hostname = "ansible"
    ansible.vm.provider "virtualbox" do |vb|
      vb.name = "Vagrant-ansible"
      vb.memory = 2048
      vb.cpus = 2
    end
	ansible.vm.provision "shell", path: "scripts/update.sh"
	ansible.vm.provision "shell", path: "scripts/create_user.sh"
    ansible.vm.provision "shell", path: "scripts/ansible.sh"
	ansible.vm.provision "shell", path: "scripts/node_exporter.sh"
  end
  
  config.vm.define "artifactory" do |artifactory|
    artifactory.vm.box = "bento/ubuntu-22.04"
    artifactory.vm.network "private_network", type: "static", ip: "192.168.10.100"
    artifactory.vm.hostname = "artifactory"
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
    grafana.vm.network "private_network", type: "static", ip: "192.168.10.91"
    grafana.vm.hostname = "grafana"
    grafana.vm.provider "virtualbox" do |vb|
      vb.name = "Vagrant-grafana"
      vb.memory = 2048
      vb.cpus = 2
    end
	grafana.vm.provision "shell", path: "scripts/update.sh"
	grafana.vm.provision "shell", path: "scripts/create_user.sh"
	grafana.vm.provision "shell", path: "scripts/grafana.sh"
  end
  
end
