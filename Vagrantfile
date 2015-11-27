# -*- mode: ruby -*-
# vi: set filetype=ruby fileencoding=UTF-8 shiftwidth=2 tabstop=2 expandtab

ip_address = "192.168.100.100"

project_name = "dev.vagrant.com"


Vagrant.configure(2) do |config|

    config.berkshelf.enabled = true

    config.vm.box = "ubuntu/trusty64"
    # config.vm.box_url = "https://atlas.hashicorp.com/ubuntu/boxes/trusty64/versions/20151117.0.0/providers/virtualbox.box"

    config.hostmanager.enabled = true
    config.hostmanager.manage_host = true
    config.vm.define project_name do |node|
        node.vm.hostname = project_name
        node.vm.network :private_network, ip: ip_address
        node.hostmanager.aliases = [ "www.#{project_name}" ]
    end
    config.vm.provision :hostmanager

end
