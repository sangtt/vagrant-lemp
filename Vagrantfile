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

    # Enable and configure chef solo
    config.vm.provision :chef_solo do |chef|
        chef.add_recipe "app::packages"
        chef.add_recipe "app::nginx"
        chef.json = {
            :app => {
                :name => project_name,
                :user => "vagrant",

                :server_name => "#{project_name}",
                :server_alias => "www.#{project_name}",
                :web_dir => "/var/www/#{project_name}",

                :packages => %w{ vim git curl },
            },
            :nginx => {
                :port => "80",
                :default_site_enabled => false
            }
        }
    end

end
