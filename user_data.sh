#!/bin/bash
# Update system and install dependencies
sudo apt-get update -y
sudo apt-get upgrade -y

# Install Java (needed for Jenkins and SonarQube)
sudo apt-get install -y openjdk-17-jdk

# Install Jenkins
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update repositories and install Jenkins
sudo apt-get update -y
sudo apt-get install -y jenkins

# Enable Jenkins to start on boot and start the service
sudo systemctl enable jenkins
sudo systemctl start jenkins

# Verify that Jenkins is running
sudo systemctl status jenkins --no-pager -l
