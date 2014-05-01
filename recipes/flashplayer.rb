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
  source "https://fpdownload.adobe.com/pub/flashplayer/current/licensing/mac/install_flash_player_13_osx.dmg"
  action :install
  volumes_dir "Flash Player"
  checksum "fc00856e77e55fadf8574212430aff6aaa3a7f3e12eb431cd505a54d02dec2fe"
  package_id "com.adobe.pkg.FlashPlayer"
end
