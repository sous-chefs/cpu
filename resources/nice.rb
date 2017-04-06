#
# Cookbook:: cpu
# Resource:: nice
# Author:: Guilhem Lettron <guilhem.lettron@youscribe.com>
#
# Copyright:: 2012-2017, Societe Publica.
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

property :pid, [String, Integer], name_property: true
property :priority, Integer, required: true

action :set do
  execute 'set nice' do
    command "renice #{new_resource.priority} #{findpid(new_resource.pid)}"
  end
end

action_class.class_eval do
  include CpuCookbook::Helpers
end
