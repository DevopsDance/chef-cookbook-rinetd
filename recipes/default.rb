include_recipe 'chef-sugar'

if ubuntu?
  include_recipe 'ubuntu'
elsif debian?
  include_recipe 'debian'
else
  raise 'Unsupported platform'
end

package 'rinetd' do
  action :install
end

service 'rinetd' do
  action :start
end
