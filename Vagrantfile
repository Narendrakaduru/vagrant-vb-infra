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
    
end
