#create hostname
Sudo hostname auto
#install wget
Sudo yum install wget -y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
        https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade -y
# Add required dependencies for the jenkins package
sudo yum install java-11-openjdk -y
sudo yum install jenkins -y
sudo systemctl daemon-reload
#start jenkins at bootup
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins

