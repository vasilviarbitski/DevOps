#
# Cookbook Name:: task5
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

tomcat_path = node['servertomcat']['tomcatPath']
version_war = node['servertomcat']['versionWar']
version_war_nodot = node['servertomcat']['versionWarNoDot']
nexus_url = node['servertomcat']['nexusUrl']
max = node['servertomcat']['max']

remote_file "#{tomcat_path}/build###{version_war_nodot}.war" do
source "#{nexus_url}/epam/build/#{version_war}/build%23%23#{version_war_nodot}.war"
end