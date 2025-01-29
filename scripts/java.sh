sudo apt-get install -y openjdk-17-jdk

echo "Update path in bashrc"
sudo echo 'JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
PATH=$PATH:$HOME/bin:$JAVA_HOME/bin

export JAVA_HOME
export PATH' >> /root/.bashrc
source /root/.bashrc