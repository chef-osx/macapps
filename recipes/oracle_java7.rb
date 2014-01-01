#
# Cookbook Name:: ud-macapps
# Recipe:: java
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

remote_file "#{Chef::Config[:file_cache_path]}/jdk-7u45-macosx-x64.dmg" do
  source "http://download.oracle.com/otn-pub/java/jdk/7u45-b18/jdk-7u45-macosx-x64.dmg"
  checksum '841c4700ca55d199f7ad90fdb487a81ee59d77dabbb14f6e40f9d3bec7a34824'
  headers 'Cookie' => 'oraclelicensejdk-7u45-b18-oth-JPR=accept-securebackup-cookie;gpw_e24=http://edelivery.oracle.com'
  action :create
end

dmg_package 'JDK 7 Update 45' do
  source "file://#{Chef::Config[:file_cache_path]}/jdk-7u45-macosx-x64.dmg"
  type "pkg"
  action :install
  package_id 'com.oracle.jdk7u45'
end
