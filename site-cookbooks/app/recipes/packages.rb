#
# Cookbook Name:: app
# Recipe:: packages
#
# Copyright 2015, Sang. Truong <sang.truong@wpacks.com>
#

# Makes sure apt is up to date
include_recipe "apt"
include_recipe "build-essential"

# Install app packages
node['app']['packages'].each do |a_package|
    package a_package
end
