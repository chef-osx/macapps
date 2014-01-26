#
# Cookbook Name:: macapps
# Recipe:: flashplayer
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

dmg_package "Install Adobe Flash Player" do
  source "https://fpdownload.adobe.com/pub/flashplayer/current/licensing/mac/install_flash_player_12_osx.dmg"
  action :install
  volumes_dir "Flash Player"
  checksum "7140611fa038c2026b33c7ffa65014306919d2b38d7da19bbb56db17288987a8"
  package_id "com.adobe.pkg.FlashPlayer"
end
