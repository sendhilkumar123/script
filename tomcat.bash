
#!/bin/bash

Tomcat_urlhttps://dlcdn.apache.org/tomcat/tomcat-9/v9.0.75/bin/apache-tomcat-9.0.75.tar.gz
echo "update your vm"
yum -y update

echo "Installing java version 8"i
yum install -y java-1.8*

echo "check java version"
java -version

cd /opt/
echo "Download Tomcat"
wget $Tomcat_url
echo "Extract Tomcat file"
tar xvf apache-tomcat-9.0.75.tar.gz
echo "Change Directory name"
mv apache-tomcat-1 9.0.75 tomcat-8

echo "Start Tomcat server"
bash /opt/tomcat-8/bin/startup.sh
