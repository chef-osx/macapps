#
# Cookbook Name:: macapps
# Recipe:: lastfm
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

remote_file "#{Chef::Config[:file_cache_path]}/Last.fm-2.1.36.zip" do
  source 'http://cdn.last.fm/client/Mac/Last.fm-2.1.36.zip'
  checksum 'd61d4947117080998937c0d63148caf693f1bed5ec768d86feeb3a86f84d1ff9'
  notifies :run, "execute[unzip-lastfm]", :immediately
end

execute "unzip-lastfm" do
  command "unzip #{Chef::Config[:file_cache_path]}/Last.fm-2.1.36.zip -d /Applications"
  action :nothing
end
