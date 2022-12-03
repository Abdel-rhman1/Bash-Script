#!/bin/bash
sudo service apache2 stop

cd
cd /opt/lampp

sudo ./manager-linux-x64.run
sudo /opt/lampp/lampp start