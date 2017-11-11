#
# Cookbook:: coldfusion2016
# Recipe:: default
#
# Copyright:: 2017, Shaun Mouton
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

# Package required to run the installer
package 'unzip'

# Install Oracle SDK
include_recipe 'java_se'

# Setup Coldfusion User
user 'coldfusion' do
  comment 'Coldfusion system user'
  system true
  home '/opt/coldfusion2016'
  manage_home true
  shell '/bin/bash'
  password '$1$l8quCNED$yCNxXc7rkmxd/MeAs/7wJ.'
  # ColdFusion2016
end

directory '/opt/coldfusion2016' do
  owner 'coldfusion'
  group 'coldfusion'
  mode 00755
  action :create
end

cookbook_file '/opt/ColdFusion_2016_WWEJ_linux64.bin' do
  source 'ColdFusion_2016_WWEJ_linux64.bin'
  owner 'coldfusion'
  group 'coldfusion'
  mode 00744
  action :create
end

cookbook_file '/opt/silentdev.properties' do
  source 'silentdev.properties'
  owner 'coldfusion'
  group 'coldfusion'
  mode 00644
  action :create
end

execute 'run_installer' do
  command 'bash /opt/ColdFusion_2016_WWEJ_linux64.bin -f /opt/silentdev.properties'
  not_if 'grep Adobe /opt/coldfusion2016/license.html'
end

execute 'coldfusion_start' do
  command 'bash /opt/coldfusion2016/cfusion/bin/coldfusion start'
  not_if 'ps -ef | grep co[l]dfu'
end

httpd_service 'default' do
  action [:create, :start]
end
