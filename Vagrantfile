Vagrant.configure("2") do |config|
  config.vm.box = "slavrd/xenial64-golang"
  config.vm.provision "shell", privileged: false ,inline: "go get github.com/hashicorp/terraform/tools/terraform-bundle"
end
