rinetd 'localhost' do
  bind_address '127.0.0.1'
  bind_port 4444
  connect_address '127.0.0.1'
  connect_port 5555
  action :enable
end

rinetd 'localhost' do
  bind_address '127.0.0.1'
  bind_port 6666
  connect_address '127.0.0.1'
  connect_port 5555
  action :enable
end
