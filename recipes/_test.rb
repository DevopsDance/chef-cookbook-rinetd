include_recipe 'devopsdance-rinetd' # ~FC007

rinetd_conf '127.0.0.1' do
  bind_port 4444
  connect_address '127.0.0.1'
  connect_port 5555
  action :create
end

rinetd_conf '127.0.0.1' do
  bind_port 6666
  connect_address '127.0.0.1'
  connect_port 5555
  action :delete
end
