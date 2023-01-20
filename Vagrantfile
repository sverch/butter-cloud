Vagrant.configure("2") do |config|
#make 2 test boxes in the same network
#used static ips rather than dynamic so it would be easier to test  
  config.vm.define "box1" do |box1|
    box1.vm.box = "hashicorp/bionic64"
    box1.vm.network "private_network", ip: "192.168.0.1"
  end
  config.vm.define "box2" do |box2|
    box2.vm.box = "hashicorp/bionic64"
    box2.vm.network "private_network", ip: "192.168.0.2"
  end
end
