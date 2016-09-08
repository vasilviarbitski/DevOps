Vagrant.configure("2") do |config|
  
 		config.ssh.username='vagrant'
 		config.ssh.password='vagrant'
 	#	config.vm.network "private_network", ip: "10.0.0.10"
 		config.vm.network "forwarded_port", guest: 8080, host: 4567
  		config.vm.box = "bertvv/centos72"
  		config.vm.provider "virtualbox" do |vb|
   #  vb.gui = true
  end
  
  config.vm.provision "shell" do |s| 
  			s.inline = "sudo yum install mc -y"
  end

  config.vm.provision "shell" do |s| 
  			s.inline = "sudo yum install git -y"
  end

  config.vm.provision "shell" do |s| 
  			s.inline = "sudo yum install java-1.8.0-openjdk -y"
  end

  config.vm.provision "shell" do |s| 
  			s.inline = "sudo yum install tomcat -y"
  end

  # config.vm.define "server1" do |server1|
  # server1.vm.hostname = "server1"
  # server1.vm.network "private_network", ip:"10.0.0.10"
  # server1.vm.network "forwarded_port", guest: 80, host: 8080
  # end	
  #
  # config.vm.define "server2" do |server2|
  #	server2.vm.hostname = "server2"
  #	server2.vm.network "private_network", ip:"10.0.0.11"
  # end	
  
end

	