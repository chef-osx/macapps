#
# Cookbook Name:: macapps
# Recipe:: slack
#
# Copyright 2013, Urbandecoder Labs LLC
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

remote_file "#{Chef::Config[:file_cache_path]}/slack-#{node['macapps']['slack']['version']}.zip" do
  source "https://slack-ssb-updates.s3.amazonaws.com/mac_public_releases/slack-#{node['macapps']['slack']['version']}.zip"
  checksum node['macapps']['slack']['checksum']
  notifies :run, "execute[unzip-slack]", :immediately
end

execute "unzip-slack" do
  command "unzip -o #{Chef::Config[:file_cache_path]}/slack-#{node['macapps']['slack']['version']}.zip -d /Applications"
  action :nothing
end
