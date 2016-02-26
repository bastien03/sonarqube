# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu-14.04"
  config.vm.network "private_network", ip: "192.168.5.10"

  config.vm.provision "puppet" do |puppet|
    puppet.module_path = "manifests/modules"
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "site.pp"
  end
end
