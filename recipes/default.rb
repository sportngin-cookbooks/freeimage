#
# Cookbook Name:: freeimage
# Recipe:: default
#
# Copyright (C) 2013 Sport Ngin
#
# All rights reserved - Do Not Redistribute

package 'freeimage' do
  version "#{node[:freeimage][:version]}-#{node[:freeimage][:release]}"
end
