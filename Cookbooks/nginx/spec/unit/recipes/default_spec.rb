
require 'spec_helper'

describe 'nginx::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do


    platform 'ubuntu', '18.04'
    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
    it 'should install nginx' do
      expect(chef_run).to install_package "nginx"
    end
    it 'enable service nginx' do
      expect(chef_run).to enable_service "nginx"
    end
    it 'run service nginx' do
      expect(chef_run).to start_service "nginx"
    end
  end
end
