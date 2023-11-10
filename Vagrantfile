Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  
   config.vm.hostname = "python-flask-1"
   
   config.vm.network "forwarded_port", guest: 5000, host: 5050, id: "flask"
   config.vm.network "forwarded_port", guest: 8000, host: 8000, id: "django"
   
   config.vm.provision "shell", path: "provision-python.sh"
   config.vm.provision "shell", path: "provision-docker.sh"
   
   config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    #vb.gui = true
  
    # Customize the amount of memory on the VM:
    vb.memory = "1024"
  end
end
