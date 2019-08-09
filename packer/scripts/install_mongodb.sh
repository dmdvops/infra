#!/bin/sh

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927
bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list'

apt-get update
apt-get install -y mongodb-org

if [ $? -eq 0 ]
then
  echo "OK: Command for instaling mongodb finished without errors"
else
  echo "CRITICAL: Command for installing is not complete!"
  exit 1
fi

systemctl enable mongod
systemctl start mongod

if [ $? -ne 0 ]
then
  echo "CRITICAL: MongoDB is not started!"
  exit 1  
fi

echo "OK: MongoDB is installed and is started"
exit 0
