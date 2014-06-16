#
# Cookbook Name:: grimoire
# Recipe:: mlstats
#
# Copyright 2014, Andy Grunwald
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
#

include_recipe "python"

targetDir = node[:mlstats][:destination]

directory "#{targetDir}" do
	owner node[:mlstats][:owner]
	group node[:mlstats][:group]
	mode  "0755"
	action :create
	recursive true
end

git "checkout-mlstats" do
	repository node[:mlstats][:repository]
	reference node[:mlstats][:version]
	action :sync
	destination targetDir
end

execute "mlstats-setup.py install" do
	command "python setup.py install"
	cwd targetDir
	action :run
end
