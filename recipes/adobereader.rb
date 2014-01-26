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
  source "https://ardownload.adobe.com/pub/adobe/reader/mac/11.x/11.0.06/en_US/AdbeRdr11006_en_US.dmg"
  action :install
  volumes_dir "AdbeRdr11006_en_US"
  checksum "5d057ea44692036d6b7b2eb3b7f906baac23aca95c1b417535a33527a252929a"
  type "pkg"
  package_id "com.adobe.acrobat.reader.11006.reader.app.pkg.en_US"
end
