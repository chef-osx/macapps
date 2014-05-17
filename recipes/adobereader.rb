#
# Cookbook Name:: macapps
# Recipe:: adobereader
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

dmg_package "Adobe Reader XI Installer" do
  source "https://ardownload.adobe.com/pub/adobe/reader/mac/11.x/11.0.07/en_US/AdbeRdr11007_en_US.dmg"
  action :install
  volumes_dir "AdbeRdr11007_en_US"
  checksum "817a9f475f0a05b3b6d353eb10430769176506f6066c48b492dc13ff627b3a39"
  type "pkg"
  package_id "com.adobe.acrobat.reader.11007.reader.app.pkg.en_US"
end
