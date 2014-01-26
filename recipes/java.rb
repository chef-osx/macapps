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

dmg_properties = node["macapps"]["java"]["dmg"]
dmg_source = dmg_properties["source"]
dmg_volumes_dir = dmg_properties["volumes_dir"]
dmg_checksum = dmg_properties["checksum"]

dmg_package "JavaForOSX" do
  source dmg_source
  volumes_dir dmg_volumes_dir
  action :install
  type "pkg"
  package_id "com.apple.pkg.JavaForMacOSX107"
  checksum dmg_checksum
end

node['macapps']['java']['additional'].each do |pkg, pkgdata|
  remote_file "#{Chef::Config[:file_cache_path]}/#{pkg}.pkg" do
    source pkgdata['source']
    checksum pkgdata['checksum']
    action :create
  end

  execute "install-#{pkg}" do
    command "installer -pkg #{Chef::Config[:file_cache_path]}/#{pkg}.pkg -target /"
    action :run
    not_if "pkgutil --pkgs=#{pkgdata['package_id']}"
  end
end
