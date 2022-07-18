#!/bin/bash
apt-get update -y
curl https://raw.githubusercontent.com/james-cole2015/urban-sniffle/main/jenkins_install.sh > jenkins_install.sh
chmod +x jenkins_install.sh
./jenkins_install.sh