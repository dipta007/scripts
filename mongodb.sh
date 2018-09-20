sudo service mongod start
sudo service mongod stop
sudo service mongod restart

# mongo shell
mongo --host 127.0.0.1:27017

# remove package
sudo apt-get purge mongodb-org*

# remove data and log dirs
sudo rm -r /var/log/mongodb
sudo rm -r /var/lib/mongodb