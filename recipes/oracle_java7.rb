#
# Cookbook Name:: macapps
# Recipe:: oracle_java7
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

remote_file "#{Chef::Config[:file_cache_path]}/jdk-macosx-x64.dmg" do
  source node['macapps']['oracle_java7']['download_url']
  checksum node['macapps']['oracle_java7']['checksum']
  headers 'Cookie' => 'oraclelicense=accept-securebackup-cookie'
  action :create
end

dmg_package 'JDK 7' do
  source "file://#{Chef::Config[:file_cache_path]}/jdk-macosx-x64.dmg"
  type 'pkg'
  action :install
  package_id node['macapps']['oracle_java7']['package_id']
end
