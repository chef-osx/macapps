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

remote_file "#{Chef::Config[:file_cache_path]}/savosx_90_he.zip" do
  source 'http://downloads.sophos.com/home-edition/savosx_90_he.zip'
  checksum 'e5f1b8cd0afaaca689942fdfb693e53e4e0b0dc88442344a1b5e7b23ca823fd9'
  notifies :run, "execute[unzip-sophos]"
end

execute "unzip-sophos" do
  command "unzip #{Chef::Config[:file_cache_path]}/savosx_90_he.zip -d /Applications"
  action :nothing
end
