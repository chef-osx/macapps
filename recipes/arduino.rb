#
# Cookbook Name:: macapps
# Recipe:: arduino
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

include_recipe 'macapps::java'

remote_file "#{Chef::Config[:file_cache_path]}/arduino-1.0.5-macosx.zip" do
  source 'http://arduino.googlecode.com/files/arduino-1.0.5-macosx.zip'
  checksum '12f2d649b2cfd537317f63d9cb102dc052647c32a5b07c76d344ed959319c05e'
  notifies :run, "execute[unzip-arduino]", :immediately
end

execute "unzip-arduino" do
  command "unzip #{Chef::Config[:file_cache_path]}/arduino-1.0.5-macosx.zip -d /Applications"
  action :nothing
end
