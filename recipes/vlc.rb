#
# Cookbook Name:: macapps
# Recipe:: vlc
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

dmg_properties = node['macapps']['vlc']['dmg']

dmg_package "VLC" do
  dmg_name "vlc-#{dmg_properties['version']}"
  volumes_dir "vlc-#{dmg_properties['version']}"
  source "http://download.videolan.org/vlc/#{dmg_properties['version']}/macosx/vlc-#{dmg_properties['version']}.dmg"
  checksum dmg_properties['checksum']
  action :install
end
