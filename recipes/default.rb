include_recipe 'ubuntu'

package 'rinetd' do
  action :install
end

service 'rinetd' do
  action :start
end
