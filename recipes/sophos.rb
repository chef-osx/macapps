#
# Cookbook Name:: macapps
# Recipe:: sophos
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

remote_file "#{Chef::Config[:file_cache_path]}/savosx_he_r.zip" do
  source 'http://downloads.sophos.com/home-edition/savosx_he_r.zip'
  checksum '86bcd0a10de1dc2455f3f1e9330c0b083e30ce435822daaa7ea10f04f63f5f10'
  notifies :run, "execute[unzip-sophos]"
end

execute "unzip-sophos" do
  command "unzip #{Chef::Config[:file_cache_path]}/savosx_he_r.zip -d /Applications"
  action :nothing
end
