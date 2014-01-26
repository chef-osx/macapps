#
# Cookbook Name:: macapps
# Recipe:: caffeine
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

remote_file "#{Chef::Config[:file_cache_path]}/caffeine.zip" do
  source 'http://download.lightheadsw.com/download.php?software=caffeine'
  checksum '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853'
  notifies :run, "execute[unzip-caffeine]", :immediately
end

execute "unzip-caffeine" do
  command "unzip #{Chef::Config[:file_cache_path]}/caffeine.zip -d /Applications"
  action :nothing
end
