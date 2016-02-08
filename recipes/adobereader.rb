#
# Cookbook Name:: macapps
# Recipe:: adobereader
#
# Copyright 2016, Urbandecoder Labs
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

dmg_package "AcroRdrDC_1501020056_MUI" do
  source "http://ardownload.adobe.com/pub/adobe/reader/mac/AcrobatDC/1501020056/AcroRdrDC_1501020056_MUI.dmg"
  action :install
  volumes_dir "AcroRdrDC_1501020056_MUI"
  checksum "bc6c00e34aea417cfe6e3b4c556a798b749d904d0da7ea837edad2fa1584c022"
  type "pkg"
  package_id "com.adobe.acrobat.DC.reader.app.pkg.MUI"
end
