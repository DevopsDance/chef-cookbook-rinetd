describe service('rinetd') do
  it { should be_installed }
  it { should be_running }
end

describe file('/etc/rinetd.conf') do
  its(:md5sum) { should eq '424bf145c42439ab2c75daab2c45ce0a' }
end
