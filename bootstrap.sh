#!/usr/bin/env bash
sudo apt-get update -y
sudo apt-get install -y git
cd /opt/ 
cd ..
cd vagrant_data
sudo cp java.tar.gz /opt
sudo cp maven.tar.gz /opt
sudo cp jira.bin /opt
sudo cp jenkins_2.1_all.deb /opt
cd ..
cd ..
cd opt
tar zxvf java.tar.gz
sudo update-alternatives --install /usr/bin/java java /opt/jdk1.8.0_45/bin/java 100
sudo update-alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_45/bin/javac 100
tar zxvf maven.tar.gz
sudo update-alternatives --install /usr/bin/mvn mvn /opt/apache-maven-3.3.9/bin/mvn 100

java -version
mvn -version

sudo apt-get update
sudo dpkg -i jenkins_2.1_all.deb
sudo apt-get -f -y install 
sudo apt-get install -y jenkins 
sudo service jenkins start

chmod a+x jira.bin
sudo ./jira.bin << EOF
o
1
2
8081
8006
i
EOF

