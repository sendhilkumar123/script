#!/bin/bash

# Update the package cache and install Java
sudo yum update -y
sudo amazon-linux-extras install java-openjdk11 -y

# Download and extract Apache Tomcat
wget https://downloads.apache.org/tomcat/tomcat-10/v10.0.12/bin/apache-tomcat-10.0.12.tar.gz
tar xzf apache-tomcat-10.0.12.tar.gz
sudo mv apache-tomcat-10.0.12 /opt/tomcat

# Add a new Tomcat user and update file permissions
sudo useradd -r tomcat
sudo chown -R tomcat: /opt/tomcat
sudo chmod +x /opt/tomcat/bin/*.sh

# Create a systemd service file for Tomcat
sudo tee /etc/systemd/system/tomcat.service << EOF
[Unit]
Description=Apache Tomcat Web Application Container
After=syslog.target network.target

[Service]
User=tomcat
Group=tomcat
Type=forking

Environment=CATALINA_PID=/opt/tomcat/temp/tomcat.pid
Environment=CATALINA_HOME=/opt/tomcat
Environment=CATALINA_BASE=/opt/tomcat
Environment='CATALINA_OPTS=-Xms512M -Xmx1024M -server -XX:+UseParallelGC'
Environment='JAVA_OPTS=-Djava.awt.headless=true -Djava.security.egd=file:/dev/./urandom'

ExecStart=/opt/tomcat/bin/startup.sh
ExecStop=/opt/tomcat/bin/shutdown.sh

Restart=on-failure
KillMode=process

[Install]
WantedBy=multi-user.target
EOF

# Reload systemd and start Tomcat
sudo systemctl daemon-reload
sudo systemctl start tomcat
sudo systemctl enable tomcat

# Open port 8080 in the firewall
sudo firewall-cmd --add-port=8080/tcp --permanent
sudo firewall-cmd --reload

echo "Apache Tomcat installed and started."

