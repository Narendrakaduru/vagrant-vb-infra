# Install jfrog artifactory-oss

# Check if the file already exists in /tmp
if [ ! -f "/tmp/jfrog-artifactory-oss-7.68.14-linux.tar.gz" ]; then
    # Download JFrog Artifactory OSS to /tmp
    wget -qO /tmp/jfrog-artifactory-oss-7.68.14-linux.tar.gz "https://releases.jfrog.io/artifactory/bintray-artifactory/org/artifactory/oss/jfrog-artifactory-oss/7.68.14/jfrog-artifactory-oss-7.68.14-linux.tar.gz"
fi

# Extract the downloaded tar.gz file
sudo tar -xzf /tmp/jfrog-artifactory-oss-*.tar.gz -C /opt

# Rename the extracted directory to /opt/jfrog
sudo mv /opt/artifactory-oss-* /opt/jfrog

SERVICE_FILE="/lib/systemd/system/artifactory.service"
CONFIG_CONTENT="[Unit]
Description=Artifactory service
After=network.target

[Service]
Type=forking
Restart=always
RestartSec=60
ExecStart=/opt/jfrog/app/bin/artifactory.sh start
ExecStop=/opt/jfrog/app/bin/artifactory.sh stop

[Install]
WantedBy=multi-user.target
Alias=artifactory.service"

# Check if the service file already exists
if [ ! -f "$SERVICE_FILE" ]; then
    # Create the file and append the content
    echo "$CONFIG_CONTENT" | sudo tee "$SERVICE_FILE" > /dev/null
    echo "Service file created and configured."
else
    echo "Service file already exists. Skipping configuration."
fi

# Reload Daemon
sudo systemctl daemon-reload

# Start Artifactory Service
sudo systemctl start artifactory.service

# Enable Artifactory Service
sudo systemctl enable artifactory.service


# Check if Artifactory service is active
if sudo systemctl is-active --quiet artifactory.service; then
    echo "Artifactory service is running."
    ARTIFACTORY_STATUS=true
else
    echo "Artifactory service is not running."
    ARTIFACTORY_STATUS=false
fi

# If Artifactory is running and $ARTIFACTORY_STATUS is true, delete the tar.gz file
if [ "$ARTIFACTORY_STATUS" = true ]; then
    echo "Deleting /tmp/jfrog-artifactory-oss-7.68.14-linux.tar.gz"
    sudo rm -f /tmp/jfrog-artifactory-oss-7.68.14-linux.tar.gz
else
    echo "Artifactory is not running or ARTIFACTORY_STATUS is not true. Skipping deletion."
fi