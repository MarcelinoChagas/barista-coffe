Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.hostname =  "barista"
  config.vm.network "public_network"
  config.vm.provision "shell", path: "provision.sh"
end