#
# Cookbook Name:: ud-macapps
# Recipe:: xquartz
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

dmg_package "XQuartz" do
  source "http://xquartz.macosforge.org/downloads/SL/XQuartz-2.7.5.dmg"
  action :install
  volumes_dir "XQuartz-2.7.5"
  checksum "4382ff78cef5630fb6b8cc982da2e5a577d8cc5dddd35a493b50bad2fcf5e34a"
  type "pkg"
  owner node['current_user']
  package_id "org.macosforge.xquartz.pkg"
end
