#
# Author:: Manuele Piastra (<manupia@gmail.com>)
# Cookbook Name:: jboss
# Recipe:: default
#
# Copyright 2008-2011, CoseNonJaviste
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

jboss_url = node["jboss"]["url"]
filename = File.basename(jboss_url)

include_recipe 'ark::default'

log "Installing JBoss from #{jboss_url}"

ark 'jboss' do
  url jboss_url
  path "/opt"
  action :put
end
