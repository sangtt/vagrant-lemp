# vagrant-lemp
Vagrant lemp server

# Install Necessary Dependencies

* [Install Virtual Box](https://www.virtualbox.org/wiki/Downloads)
* [Install Vagrant](http://www.vagrantup.com/downloads.html)

There is a tool called Berkshelf that helps manage Chef’s cookbooks.
```sh
gem install berkshelf
```

Vagrant plugins
```sh
vagrant plugin install vagrant-berkshelf
vagrant plugin install vagrant-hostmanager
vagrant plugin install vagrant-omnibus
```

* The Vagrant Hostmanager plugin lets you add a configuration to Vagrant to automatically update your hostfile and point it to the IP in use.
* The Vagrant Omnibus plugin ensures the desired version of Chef is installed.

# Usage

Download source code
```sh
git clone https://github.com/sangtt/vagrant-lemp.git
cd vagrant-lemp
vagrant up
```

Then
```url
http://www.dev.vagrant.com
```

You can also ssh access to your virtual machine
```ssh
vagrant ssh
```

# Configuration

```config
# The virtual machine ip address
ip_address = "192.168.100.100"

# The machine name
project_name = "dev.vagrant.com"
```

# Issues
Any [issues](https://github.com/sangtt/vagrant-lemp/issues) please let me know.
