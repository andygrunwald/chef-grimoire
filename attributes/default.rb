#
# Cookbook Name:: grimoire
# Attributes:: default
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

#
# Mailing List Stats
#
# Sometimes you want to install a fork of Mailing List Stats
default[:grimoire][:mlstats][:repository] = "https://github.com/MetricsGrimoire/MailingListStats.git"

# If you want to checkout a fixed tag or a development version
default[:grimoire][:mlstats][:version] = "master"

# The install directory of RepositoryHandler
default[:grimoire][:mlstats][:destination] = "/tmp/MetricsGrimoire/mlstats"

default[:grimoire][:mlstats][:owner] = "root"
default[:grimoire][:mlstats][:group] = "root"
