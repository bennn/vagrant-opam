# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "trusty32"
  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-i386-vagrant-disk1.box"
  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  config.vm.network :forwarded_port, guest: 80, host: 8000

  # If true, then any SSH connections made will enable agent forwarding.
  # Default value: false
  # config.ssh.forward_agent = true

  # Provider-specific configuration.
  config.vm.provider :virtualbox do |vb|
    vb.gui = true
    vb.name = "Coq311 VM"
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.provision :shell, :path => "bootstrap.sh"
  config.vm.provision :shell, privileged: false, :path => "setup-opam.sh"
  config.vm.provision :shell, privileged: false, :path => "setup-git.sh"
  config.vm.provision :shell, privileged: false, :path => "setup-coq311.sh"
  config.vm.provision :shell, privileged: false, :path => "setup-emacs.sh"
  config.vm.provision :shell, privileged: false, :path => "setup-vim.sh"
  config.vm.provision :shell, privileged: false, :path => "setup-lxde.sh"
  config.vm.provision :shell, privileged: false, :path => "setup-misc.sh"

  # disable the synced folder feature (Windows bug if commented out)
  config.vm.synced_folder ".", "/vagrant", disabled: true
end
