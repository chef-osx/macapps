#
# Cookbook Name:: macapps
# Recipe:: alfred
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

remote_file "#{Chef::Config[:file_cache_path]}/G2WMT_GlobalUS_v6.0_b1259.zip" do
  source 'https://support.citrixonline.com/servlet/fileField?retURL=%2Fapex%2FCPDownloadStarter%3FarticleLinkId%3DG2MD00062%26l%3Den_US%26product%3DGoToMeeting&entityId=ka350000000TfGXAA0&field=Content__Body__s'
  checksum 'a2fec75464b0bc5858007fcfa694ea2459f171621f561bed793e524a90544184'
  notifies :run, "execute[unzip-gtm]", :immediately
end

execute "unzip-gtm" do
  command "unzip #{Chef::Config[:file_cache_path]}/G2WMT_GlobalUS_v6.0_b1259.zip -d #{Chef::Config[:file_cache_path]}"
  action :nothing
  notifies :run, "execute[fix-gtm-dmg-naming]", :immediately
end

execute "fix-gtm-dmg-naming" do
  command 'mv G2WMT_Global\&US_v6.0_b1259.dmg G2WMT_GlobalUS_v6.0_b1259.dmg'
  cwd Chef::Config[:file_cache_path]
  action :nothing
end

dmg_package "GoToMeeting" do
  source "file://#{Chef::Config[:file_cache_path]}/G2WMT_GlobalUS_v6.0_b1259.dmg"
  checksum '91d78e59f2790bda1ffeba072d36b64d7165d94be83973a899a0b45b6e47bd01'
end
