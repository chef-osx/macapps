#
# Cookbook Name:: macapps
# Recipe:: zoomus
#
# Copyright 2014, Urbandecoder Labs LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

remote_file "#{Chef::Config[:file_cache_path]}/zoomusInstaller.pkg" do
  source node['macapps']['zoomus']['pkg']['source']
  checksum node['macapps']['zoomus']['pkg']['checksum']
  action :create
end

execute "install-zoomus" do
  command "installer -pkg #{Chef::Config[:file_cache_path]}/zoomusInstaller.pkg -target /"
  action :run
  creates '/Applications/zoom.us.app'
end
