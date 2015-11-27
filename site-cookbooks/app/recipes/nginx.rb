#
# Cookbook Name:: app
# Recipe:: nginx
#
# Copyright 2015, Sang. Truong <sang.truong@wpacks.com>
#

# Makes sure apt is up to date
include_recipe "openssl"
include_recipe "nginx"

directory node.app.web_dir do
    owner node.app.user
    mode "0755"
    recursive true
end

directory "#{node.app.web_dir}/public" do
    owner node.app.user
    mode "0755"
    recursive true
end

directory "#{node.app.web_dir}/logs" do
    owner node.app.user
    mode "0755"
    recursive true
end

template "#{node.nginx.dir}/sites-available/#{node.app.name}.conf" do
    source "nginx.conf.erb"
    mode "0644"
end

nginx_site "#{node.app.name}.conf"

cookbook_file "#{node.app.web_dir}/public/index.html" do
    source "index.html"
    mode "0755"
    owner node.app.user
end
