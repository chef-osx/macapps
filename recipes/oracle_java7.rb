#
# Cookbook Name:: macapps
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

remote_file "#{Chef::Config[:file_cache_path]}/jdk-7u51-macosx-x64.dmg" do
  source "http://download.oracle.com/otn-pub/java/jdk/7u51-b13/jdk-7u51-macosx-x64.dmg"
  checksum '1312b0553bd37a232114637f05b036a6fd5d444e653adef7230ba141328f7734'
  headers 'Cookie' => 'oraclelicensejdk-7u51-b13-oth-JPR=accept-securebackup-cookie;gpw_e24=http://edelivery.oracle.com'
  action :create
end

dmg_package 'JDK 7 Update 51' do
  source "file://#{Chef::Config[:file_cache_path]}/jdk-7u51-macosx-x64.dmg"
  type "pkg"
  action :install
  package_id 'com.oracle.jdk7u51'
end
