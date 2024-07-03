# Check if user 'nani' exists
if ! id -u nani &>/dev/null; then
    echo "Adding user 'nani'"

    # Add user 'nani' with password '6264' and home directory '/home/nani'
    sudo useradd -m -p $(openssl passwd -1 6264) -d /home/nani nani

    # Set the shell for the user 'nani' to /bin/bash
    sudo usermod -s /bin/bash nani

    # Add 'nani' to sudo group (optional)
    sudo usermod -aG sudo nani

    echo "User 'nani' added successfully."
else
    echo "User 'nani' already exists. Skipping user creation."
fi

# Ensure vagrant and nani users are added to sudoers with NOPASSWD if not already present
if ! grep -q "^vagrant ALL=(ALL) NOPASSWD:ALL" /etc/sudoers; then
    echo "Adding vagrant to sudoers"
    echo "vagrant ALL=(ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers
fi

if ! grep -q "^nani ALL=(ALL) NOPASSWD:ALL" /etc/sudoers; then
    echo "Adding nani to sudoers"
    echo "nani ALL=(ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers
fi

# Check if PasswordAuthentication is already enabled in sshd_config
if ! grep -q "^PasswordAuthentication yes" /etc/ssh/sshd_config; then
    echo "Enable Password Authentication"
    echo 'PasswordAuthentication yes' | sudo tee -a /etc/ssh/sshd_config > /dev/null
    sudo systemctl restart ssh
else
    echo "Password Authentication already enabled. Skipping."
fi