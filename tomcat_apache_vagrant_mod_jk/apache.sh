sudo yum install httpd -y
sudo cp /vagrant/mod_jk.so /etc/httpd/modules/
echo "
	worker.list=worker1
	worker.worker1.port=8009
	worker.worker1.host=localhost
	worker.worker1.type=ajp13" > /etc/httpd/conf/workers.properties
echo "
	LoadModule jk_module modules/mod_jk.so
	JkWorkersFile conf/workers.properties
	JkShmFile /tmp/shm
	JkLogFile logs/mod_jk.log
	JkLogLevel info
	JkMount /examples/* worker1" >> /etc/httpd/conf/httpd.conf
sudo systemctl start httpd
sudo systemctl enable httpd
