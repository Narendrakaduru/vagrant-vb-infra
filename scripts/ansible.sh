# Install ansible from PPA repository
sudo apt install software-properties-common -y
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y

# sudo ansible-config init --disabled > /etc/ansible/ansible.cfg

# Fetch Ansible configuration file from URL and redirect contents to /etc/ansible/ansible.cfg
curl -sSL https://gist.githubusercontent.com/alivx/2a4ca3e577ead4bd38d247c258e6513b/raw/fe2b9b1c7abc2b52cc6998525718c9a40c7e02a5/ansible.cfg | sudo tee /etc/ansible/ansible.cfg >/dev/null

# Uncomment the inventory line in ansible.cfg if it's commented
sudo sed -i 's/^#inventory       = \/etc\/ansible\/hosts/inventory       = \/etc\/ansible\/hosts/' /etc/ansible/ansible.cfg