require 'spec_helper'

describe 'Consul Template' do
  describe service('consul-template') do
    it { should be_enabled }
  end

  describe file('/var/log/consul-template') do
    it { should be_file }
  end

  describe file('/opt/consul-template/config/consul-template.cfg') do
    it { should be_file }
  end
end